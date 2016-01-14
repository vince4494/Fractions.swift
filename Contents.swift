import UIKit

class Fraction
{
    var numerator: Int = 0;
    var denominator: Int = 1;
    
    init(numerator: Int, denominator: Int)
    {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    
    init(_ numerator: Int, over denominator: Int)
    {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    
    init() {}
    
    func setTo(numerator: Int, denominator: Int)
    {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    
    func setTo(numerator: Int, over denominator: Int)
    {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    
    func setTo(numerator: Int, _ denominator: Int)
    {
        self.numerator = numerator;
        self.denominator = denominator;
    }
    
    func printFraction()
    {
        print("\(numerator)/\(denominator)");
        
    }
    
    func toDouble() -> Double
    {
        
        return Double(numerator) / Double(denominator);
    }
    
    func add(f:Fraction)
    {
        numerator = numerator * f.denominator + denominator * f.numerator;
        denominator = denominator * f.denominator;
        
    }
    
    func reduce()
    {
        let sign = numerator >= 0 ? 1 : -1;
        var u = numerator * sign;
        var v = denominator;
        var r: Int
        while(v != 0 )
        {
            r = u % v;
            u = v;
            v = r;
                
        }
        
        numerator /= u;
        denominator /= u;
        
    }
    
    func multiple(f:Fraction)
    {
        numerator = numerator * f.numerator;
        denominator = denominator * f.denominator;
        
    }
    
    func subtract(f:Fraction)
    {
        numerator = numerator * f.denominator - denominator * f.numerator;
        denominator = denominator * f.denominator;
    }
    
    func division(f:Fraction)
    {
    
        numerator = numerator * f.denominator;
        denominator = denominator * f.numerator;
    }
    

}


//Test Variables
var f1 = Fraction(3, over: 10);
var f2 = Fraction(4, over: 5);

var f3 = Fraction(1, over: 2);
var f4 = Fraction(3, over: 8);

var f5 = Fraction(1, over: 6);
var f6 = Fraction(2, over: 4);


f1.subtract(f2)
f1.reduce()
f1.printFraction()

f3.multiple(f4)
f3.reduce()
f3.printFraction()

f5.division(f6)
f5.reduce()
f5.printFraction()

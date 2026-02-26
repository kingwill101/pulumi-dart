// ignore_for_file: unused_element, unnecessary_cast

class ControlBoostActionInterpolationBoostSpecControlPoint {
  /// The attribute value of the control point.
  final String? attributeValue;

  /// The value between -1 to 1 by which to boost the score if the attributeValue
  /// evaluates to the value specified above.
  final double? boostAmount;

  ControlBoostActionInterpolationBoostSpecControlPoint({
    this.attributeValue,
    this.boostAmount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeValueValue = attributeValue;
    if (attributeValueValue != null) {
      map['attributeValue'] = attributeValueValue;
    }
    final boostAmountValue = boostAmount;
    if (boostAmountValue != null) {
      map['boostAmount'] = boostAmountValue;
    }
    return map;
  }

  factory ControlBoostActionInterpolationBoostSpecControlPoint.fromMap(
      Map<String, dynamic> map) {
    return ControlBoostActionInterpolationBoostSpecControlPoint(
      attributeValue: map['attributeValue'] == null
          ? null
          : map['attributeValue'] as String,
      boostAmount:
          map['boostAmount'] == null ? null : map['boostAmount'] as double,
    );
  }
}

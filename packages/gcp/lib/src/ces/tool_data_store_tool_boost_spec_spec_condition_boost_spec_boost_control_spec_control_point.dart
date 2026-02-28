// ignore_for_file: unused_element, unnecessary_cast

class ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint {
  /// Can be one of:
  /// 1. The numerical field value.
  /// 2. The duration spec for freshness:
  /// The value must be formatted as an XSD `dayTimeDuration` value (a
  /// restricted subset of an ISO 8601 duration value). The pattern for
  /// this is: `nDnM]`.
  final String? attributeValue;

  /// The value between -1 to 1 by which to boost the score if the
  /// attribute_value evaluates to the value specified above.
  final double? boostAmount;

  /// Creates a new [ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint].
  /// [attributeValue] Can be one of:
  /// [boostAmount] The value between -1 to 1 by which to boost the score if the
  ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint({
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

  factory ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint.fromMap(
      Map<String, dynamic> map) {
    return ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint(
      attributeValue: map['attributeValue'] == null
          ? null
          : map['attributeValue'] as String,
      boostAmount:
          map['boostAmount'] == null ? null : map['boostAmount'] as double,
    );
  }
}

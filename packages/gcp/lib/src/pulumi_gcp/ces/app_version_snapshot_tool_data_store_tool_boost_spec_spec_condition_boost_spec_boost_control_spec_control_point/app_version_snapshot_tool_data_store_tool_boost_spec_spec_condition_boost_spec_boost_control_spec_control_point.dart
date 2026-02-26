// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint {
  /// (Output)
  /// Can be one of:
  /// 1. The numerical field value.
  /// 2. The duration spec for freshness:
  /// The value must be formatted as an XSD `dayTimeDuration` value (a
  /// restricted subset of an ISO 8601 duration value). The pattern for
  /// this is: `nDnM]`.
  final String? attributeValue;

  /// (Output)
  /// The value between -1 to 1 by which to boost the score if the<span pulumi-lang-nodejs="
  /// attributeValue " pulumi-lang-dotnet="
  /// AttributeValue " pulumi-lang-go="
  /// attributeValue " pulumi-lang-python="
  /// attribute_value " pulumi-lang-yaml="
  /// attributeValue " pulumi-lang-java="
  /// attributeValue ">
  /// attribute_value </span>evaluates to the value specified above.
  final double? boostAmount;

  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint({
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

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint(
      attributeValue: map['attributeValue'] == null
          ? null
          : map['attributeValue'] as String,
      boostAmount:
          map['boostAmount'] == null ? null : map['boostAmount'] as double,
    );
  }
}

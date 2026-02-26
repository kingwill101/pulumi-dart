// ignore_for_file: unused_element, unnecessary_cast

/// Range used to validate doubles and floats.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange {
  /// The inclusive maximum of the acceptable range.
  final double? max;

  /// The inclusive minimum of the acceptable range.
  final double? min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

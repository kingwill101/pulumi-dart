// ignore_for_file: unused_element, unnecessary_cast

/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange {
  /// The inclusive maximum of the acceptable range.
  final String? max;

  /// The inclusive minimum of the acceptable range.
  final String? min;

  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange({
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

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(
      max: map['max'] == null ? null : map['max'] as String,
      min: map['min'] == null ? null : map['min'] as String,
    );
  }
}

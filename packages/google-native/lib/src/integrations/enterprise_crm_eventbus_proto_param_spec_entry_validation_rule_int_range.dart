// ignore_for_file: unused_element, unnecessary_cast


/// Range used to validate longs and ints.
class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange {
  /// The inclusive maximum of the acceptable range.
  final String? max;
  /// The inclusive minimum of the acceptable range.
  final String? min;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange].
  /// [max] The inclusive maximum of the acceptable range.
  /// [min] The inclusive minimum of the acceptable range.
  EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(
      max: map['max'] == null ? null : map['max'] as String,
      min: map['min'] == null ? null : map['min'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetWafRulesWafRuleCondition {
  /// The match field.
  final String key;
  /// The logical symbol.
  final String opValue;
  /// The subfield of the target field.
  final String subKey;
  /// The match content. Separate multiple values with commas (,).
  final String values;

  /// Creates a new [GetWafRulesWafRuleCondition].
  /// [key] The match field.
  /// [opValue] The logical symbol.
  /// [subKey] The subfield of the target field.
  /// [values] The match content. Separate multiple values with commas (,).
  GetWafRulesWafRuleCondition({
    required this.key,
    required this.opValue,
    required this.subKey,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'opValue': opValue,
      'subKey': subKey,
      'values': values,
    };
  }

  factory GetWafRulesWafRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetWafRulesWafRuleCondition(
      key: map['key'] as String,
      opValue: map['opValue'] as String,
      subKey: map['subKey'] as String,
      values: map['values'] as String,
    );
  }
}


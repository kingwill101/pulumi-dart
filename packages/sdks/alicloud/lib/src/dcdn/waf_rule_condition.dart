// ignore_for_file: unused_element, unnecessary_cast


class WafRuleCondition {
  /// The match field.
  final String key;
  /// The logical symbol.
  final String opValue;
  /// The match subfield.
  final String? subKey;
  /// The match content. Separate multiple values with commas (,).
  final String? values;

  /// Creates a new [WafRuleCondition].
  /// [key] The match field.
  /// [opValue] The logical symbol.
  /// [subKey] The match subfield.
  /// [values] The match content. Separate multiple values with commas (,).
  WafRuleCondition({
    required this.key,
    required this.opValue,
    this.subKey,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'opValue': opValue,
      'subKey': ?subKey,
      'values': ?values,
    };
  }

  factory WafRuleCondition.fromMap(Map<String, dynamic> map) {
    return WafRuleCondition(
      key: map['key'] as String,
      opValue: map['opValue'] as String,
      subKey: map['subKey'] == null ? null : map['subKey'] as String,
      values: map['values'] == null ? null : map['values'] as String,
    );
  }
}


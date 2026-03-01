// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigSecurityLevel {
  /// The value of the custom signature field used for validation.
  final String? value;

  /// Creates a new [WafRuleConfigSecurityLevel].
  /// [value] The value of the custom signature field used for validation.
  WafRuleConfigSecurityLevel({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory WafRuleConfigSecurityLevel.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigSecurityLevel(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigAppSdkCustomSign {
  /// The name of the custom signature field used for validation.
  final String? key;
  /// The value of the custom signature field used for validation.
  final String? value;

  /// Creates a new [WafRuleConfigAppSdkCustomSign].
  /// [key] The name of the custom signature field used for validation.
  /// [value] The value of the custom signature field used for validation.
  WafRuleConfigAppSdkCustomSign({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WafRuleConfigAppSdkCustomSign.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigAppSdkCustomSign(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}


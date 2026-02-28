// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  /// Creates a new [GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

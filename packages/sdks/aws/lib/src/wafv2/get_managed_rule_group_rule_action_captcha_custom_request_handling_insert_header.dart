// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


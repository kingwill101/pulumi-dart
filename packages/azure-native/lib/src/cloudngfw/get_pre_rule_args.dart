// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_pre_rule_args_doc}
/// Arguments for getPreRule.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_pre_rule_args_doc}
class GetPreRuleArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Pre Rule priority
  final pulumi.Input<String> priority;

  /// Creates a new [GetPreRuleArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [priority] Pre Rule priority
  GetPreRuleArgs({
    required String globalRulestackName,
    required String priority,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      priority = pulumi.Input.asInput<String>(priority);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'priority': priority,
    };
  }

  factory GetPreRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPreRuleArgs(
      globalRulestackName: map['globalRulestackName'] as String,
      priority: map['priority'] as String,
    );
  }
}


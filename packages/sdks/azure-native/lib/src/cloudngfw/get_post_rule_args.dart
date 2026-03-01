// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_post_rule_args_doc}
/// Arguments for getPostRule.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_post_rule_args_doc}
class GetPostRuleArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Post Rule priority
  final pulumi.Input<String> priority;

  /// Creates a new [GetPostRuleArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [priority] Post Rule priority
  GetPostRuleArgs({
    required pulumi.Output<String> globalRulestackName,
    required pulumi.Output<String> priority,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      priority = pulumi.Input.asInput<String>(priority);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'priority': priority,
    };
  }

  factory GetPostRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPostRuleArgs(
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      priority: pulumi.Output.create<String>(map['priority'] as String),
    );
  }
}


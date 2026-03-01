// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_post_rule_counters_args_doc}
/// Arguments for getPostRuleCounters.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_post_rule_counters_args_doc}
class GetPostRuleCountersArgs {
  final pulumi.Input<String>? firewallName;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Post Rule priority
  final pulumi.Input<String> priority;

  /// Creates a new [GetPostRuleCountersArgs].
  /// [firewallName] Optional.
  /// [globalRulestackName] GlobalRulestack resource name
  /// [priority] Post Rule priority
  GetPostRuleCountersArgs({
    String? firewallName,
    required String globalRulestackName,
    required String priority,
  }) :
      firewallName = pulumi.Input.asOptionalInput<String>(firewallName),
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      priority = pulumi.Input.asInput<String>(priority);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallName': ?firewallName,
      'globalRulestackName': globalRulestackName,
      'priority': priority,
    };
  }

  factory GetPostRuleCountersArgs.fromMap(Map<String, dynamic> map) {
    return GetPostRuleCountersArgs(
      firewallName: map['firewallName'] == null ? null : map['firewallName'] as String,
      globalRulestackName: map['globalRulestackName'] as String,
      priority: map['priority'] as String,
    );
  }
}


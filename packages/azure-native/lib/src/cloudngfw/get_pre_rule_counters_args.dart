// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_pre_rule_counters_args_doc}
/// Arguments for getPreRuleCounters.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_pre_rule_counters_args_doc}
class GetPreRuleCountersArgs {
  final pulumi.Input<String>? firewallName;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Pre Rule priority
  final pulumi.Input<String> priority;

  /// Creates a new [GetPreRuleCountersArgs].
  /// [firewallName] Optional.
  /// [globalRulestackName] GlobalRulestack resource name
  /// [priority] Pre Rule priority
  GetPreRuleCountersArgs({
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

  factory GetPreRuleCountersArgs.fromMap(Map<String, dynamic> map) {
    return GetPreRuleCountersArgs(
      firewallName: map['firewallName'] == null ? null : map['firewallName'] as String,
      globalRulestackName: map['globalRulestackName'] as String,
      priority: map['priority'] as String,
    );
  }
}


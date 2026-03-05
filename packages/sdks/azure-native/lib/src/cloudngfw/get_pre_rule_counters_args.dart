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
    this.firewallName,
    required this.globalRulestackName,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallName': ?firewallName,
      'globalRulestackName': globalRulestackName,
      'priority': priority,
    };
  }

  factory GetPreRuleCountersArgs.fromMap(Map<String, dynamic> map) {
    return GetPreRuleCountersArgs(
      firewallName: (() { final guardedValue = map['firewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as String),
    );
  }
}


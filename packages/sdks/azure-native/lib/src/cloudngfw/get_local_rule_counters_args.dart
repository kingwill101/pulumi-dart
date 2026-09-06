// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rule_counters_args_doc}
/// Arguments for getLocalRuleCounters.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rule_counters_args_doc}
class GetLocalRuleCountersArgs {
  final pulumi.Input<String?>? firewallName;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// Local Rule priority
  final pulumi.Input<String> priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRuleCountersArgs].
  /// [firewallName] Optional.
  /// [localRulestackName] LocalRulestack resource name
  /// [priority] Local Rule priority
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetLocalRuleCountersArgs({
    this.firewallName,
    required this.localRulestackName,
    required this.priority,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallName': ?firewallName,
      'localRulestackName': localRulestackName,
      'priority': priority,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRuleCountersArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRuleCountersArgs(
      firewallName: (() { final guardedValue = map['firewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

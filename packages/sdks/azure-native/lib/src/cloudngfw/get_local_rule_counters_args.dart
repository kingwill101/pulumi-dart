// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rule_counters_args_doc}
/// Arguments for getLocalRuleCounters.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rule_counters_args_doc}
class GetLocalRuleCountersArgs {
  final pulumi.Input<String>? firewallName;
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
  GetLocalRuleCountersArgs({
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
      firewallName: map['firewallName'] == null ? null : (map['firewallName']! as String).input(),
      localRulestackName: (map['localRulestackName'] as String).input(),
      priority: (map['priority'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


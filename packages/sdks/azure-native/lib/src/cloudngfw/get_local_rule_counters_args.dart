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
    pulumi.Output<String>? firewallName,
    required pulumi.Output<String> localRulestackName,
    required pulumi.Output<String> priority,
    required pulumi.Output<String> resourceGroupName,
  }) :
      firewallName = pulumi.Input.asOptionalInput<String>(firewallName),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      priority = pulumi.Input.asInput<String>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      firewallName: map['firewallName'] == null ? null : pulumi.Output.create<String>(map['firewallName'] as String),
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      priority: pulumi.Output.create<String>(map['priority'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_firewall_rule_properties.dart';

/// {@template pulumi_horizondb_horizon_db_firewall_rule_args_doc}
/// The set of arguments for HorizonDbFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_horizondb_horizon_db_firewall_rule_args_doc}
class HorizonDbFirewallRuleArgs {
  /// The name of the HorizonDB cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the HorizonDB firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the HorizonDB pool.
  final pulumi.Input<String> poolName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<HorizonDbFirewallRuleProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HorizonDbFirewallRuleArgs].
  /// [clusterName] The name of the HorizonDB cluster.
  /// [firewallRuleName] The name of the HorizonDB firewall rule.
  /// [poolName] The name of the HorizonDB pool.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const HorizonDbFirewallRuleArgs({
    required this.clusterName,
    this.firewallRuleName,
    required this.poolName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'firewallRuleName': ?firewallRuleName,
      'poolName': poolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<HorizonDbFirewallRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HorizonDbFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return HorizonDbFirewallRuleArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      firewallRuleName: (() { final guardedValue = map['firewallRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizonDbFirewallRuleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

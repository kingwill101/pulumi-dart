// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_properties.dart';

/// {@template pulumi_databasefleetmanager_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// Name of the firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// Name of the fleetspace.
  final pulumi.Input<String> fleetspaceName;
  /// A Firewall rule properties.
  final pulumi.Input<FirewallRuleProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FirewallRuleArgs].
  /// [firewallRuleName] Name of the firewall rule.
  /// [fleetName] Name of the database fleet.
  /// [fleetspaceName] Name of the fleetspace.
  /// [properties] A Firewall rule properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FirewallRuleArgs({
    String? firewallRuleName,
    required String fleetName,
    required String fleetspaceName,
    FirewallRuleProperties? properties,
    required String resourceGroupName,
  }) :
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceName = pulumi.Input.asInput<String>(fleetspaceName),
      properties = pulumi.Input.asOptionalInput<FirewallRuleProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': ?firewallRuleName,
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FirewallRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      firewallRuleName: map['firewallRuleName'] == null ? null : map['firewallRuleName'] as String,
      fleetName: map['fleetName'] as String,
      fleetspaceName: map['fleetspaceName'] as String,
      properties: map['properties'] == null ? null : FirewallRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}


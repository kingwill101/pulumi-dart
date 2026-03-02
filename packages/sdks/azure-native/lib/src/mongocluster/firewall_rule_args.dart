// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_properties.dart';

/// {@template pulumi_mongocluster_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The name of the mongo cluster firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the mongo cluster.
  final pulumi.Input<String> mongoClusterName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<FirewallRuleProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [FirewallRuleArgs].
  /// [firewallRuleName] The name of the mongo cluster firewall rule.
  /// [mongoClusterName] The name of the mongo cluster.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  FirewallRuleArgs({
    this.firewallRuleName,
    required this.mongoClusterName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': ?firewallRuleName,
      'mongoClusterName': mongoClusterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FirewallRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      firewallRuleName: map['firewallRuleName'] == null ? null : (map['firewallRuleName'] as String).input(),
      mongoClusterName: (map['mongoClusterName'] as String).input(),
      properties: map['properties'] == null ? null : (FirewallRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


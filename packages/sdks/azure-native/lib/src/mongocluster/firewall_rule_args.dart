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
    pulumi.Output<String>? firewallRuleName,
    required pulumi.Output<String> mongoClusterName,
    pulumi.Output<FirewallRuleProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      mongoClusterName = pulumi.Input.asInput<String>(mongoClusterName),
      properties = pulumi.Input.asOptionalInput<FirewallRuleProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      firewallRuleName: map['firewallRuleName'] == null ? null : pulumi.Output.create<String>(map['firewallRuleName'] as String),
      mongoClusterName: pulumi.Output.create<String>(map['mongoClusterName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<FirewallRuleProperties>(FirewallRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


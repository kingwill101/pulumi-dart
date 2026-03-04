// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_namespace_virtual_network_rule_args_doc}
/// The set of arguments for NamespaceVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_virtual_network_rule_args_doc}
class NamespaceVirtualNetworkRuleArgs {
  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// The Virtual Network Rule name.
  final pulumi.Input<String>? virtualNetworkRuleName;

  /// ARM ID of Virtual Network Subnet
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [NamespaceVirtualNetworkRuleArgs].
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [virtualNetworkRuleName] The Virtual Network Rule name.
  /// [virtualNetworkSubnetId] ARM ID of Virtual Network Subnet
  NamespaceVirtualNetworkRuleArgs({
    required this.namespaceName,
    required this.resourceGroupName,
    this.virtualNetworkRuleName,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkRuleName': ?virtualNetworkRuleName,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory NamespaceVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceVirtualNetworkRuleArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualNetworkRuleName: (() {
        final guardedValue = map['virtualNetworkRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualNetworkSubnetId: (() {
        final guardedValue = map['virtualNetworkSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

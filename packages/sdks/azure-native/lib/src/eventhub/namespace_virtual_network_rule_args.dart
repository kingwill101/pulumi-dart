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
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? virtualNetworkRuleName,
    pulumi.Output<String>? virtualNetworkSubnetId,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkRuleName = pulumi.Input.asOptionalInput<String>(virtualNetworkRuleName),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId);

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
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkRuleName: map['virtualNetworkRuleName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkRuleName'] as String),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
    );
  }
}


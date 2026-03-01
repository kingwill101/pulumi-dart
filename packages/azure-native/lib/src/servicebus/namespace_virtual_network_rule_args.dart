// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_namespace_virtual_network_rule_args_doc}
/// The set of arguments for NamespaceVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_namespace_virtual_network_rule_args_doc}
class NamespaceVirtualNetworkRuleArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Network Rule name.
  final pulumi.Input<String>? virtualNetworkRuleName;
  /// Resource ID of Virtual Network Subnet
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [NamespaceVirtualNetworkRuleArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [virtualNetworkRuleName] The Virtual Network Rule name.
  /// [virtualNetworkSubnetId] Resource ID of Virtual Network Subnet
  NamespaceVirtualNetworkRuleArgs({
    required String namespaceName,
    required String resourceGroupName,
    String? virtualNetworkRuleName,
    String? virtualNetworkSubnetId,
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
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkRuleName: map['virtualNetworkRuleName'] == null ? null : map['virtualNetworkRuleName'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId'] as String,
    );
  }
}


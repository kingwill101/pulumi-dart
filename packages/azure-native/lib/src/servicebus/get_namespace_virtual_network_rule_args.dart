// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_namespace_virtual_network_rule_args_doc}
/// Arguments for getNamespaceVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_namespace_virtual_network_rule_args_doc}
class GetNamespaceVirtualNetworkRuleArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Network Rule name.
  final pulumi.Input<String> virtualNetworkRuleName;

  /// Creates a new [GetNamespaceVirtualNetworkRuleArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [virtualNetworkRuleName] The Virtual Network Rule name.
  GetNamespaceVirtualNetworkRuleArgs({
    required String namespaceName,
    required String resourceGroupName,
    required String virtualNetworkRuleName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkRuleName = pulumi.Input.asInput<String>(virtualNetworkRuleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkRuleName': virtualNetworkRuleName,
    };
  }

  factory GetNamespaceVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceVirtualNetworkRuleArgs(
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkRuleName: map['virtualNetworkRuleName'] as String,
    );
  }
}


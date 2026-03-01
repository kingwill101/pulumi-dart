// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_namespace_virtual_network_rule_args_doc}
/// Arguments for getNamespaceVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_namespace_virtual_network_rule_args_doc}
class GetNamespaceVirtualNetworkRuleArgs {
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The Virtual Network Rule name.
  final pulumi.Input<String> virtualNetworkRuleName;

  /// Creates a new [GetNamespaceVirtualNetworkRuleArgs].
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [virtualNetworkRuleName] The Virtual Network Rule name.
  GetNamespaceVirtualNetworkRuleArgs({
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkRuleName,
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
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkRuleName: pulumi.Output.create<String>(map['virtualNetworkRuleName'] as String),
    );
  }
}


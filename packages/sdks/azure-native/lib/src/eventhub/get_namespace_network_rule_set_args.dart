// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_namespace_network_rule_set_args_doc}
/// Arguments for getNamespaceNetworkRuleSet.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_namespace_network_rule_set_args_doc}
class GetNamespaceNetworkRuleSetArgs {
  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceNetworkRuleSetArgs].
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetNamespaceNetworkRuleSetArgs({
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceNetworkRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceNetworkRuleSetArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}

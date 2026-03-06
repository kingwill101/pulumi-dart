// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_namespace_shared_access_keys_args_doc}
/// Arguments for listNamespaceSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_namespace_shared_access_keys_args_doc}
class ListNamespaceSharedAccessKeysArgs {
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListNamespaceSharedAccessKeysArgs].
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  const ListNamespaceSharedAccessKeysArgs({
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListNamespaceSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListNamespaceSharedAccessKeysArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


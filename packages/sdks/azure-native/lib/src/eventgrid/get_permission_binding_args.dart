// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_permission_binding_args_doc}
/// Arguments for getPermissionBinding.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_permission_binding_args_doc}
class GetPermissionBindingArgs {
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Name of the permission binding.
  final pulumi.Input<String> permissionBindingName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPermissionBindingArgs].
  /// [namespaceName] Name of the namespace.
  /// [permissionBindingName] Name of the permission binding.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPermissionBindingArgs({
    required this.namespaceName,
    required this.permissionBindingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'permissionBindingName': permissionBindingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPermissionBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionBindingArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      permissionBindingName: (map['permissionBindingName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


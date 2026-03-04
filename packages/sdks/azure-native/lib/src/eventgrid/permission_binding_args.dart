// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_permission_binding_args_doc}
/// The set of arguments for PermissionBinding.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_permission_binding_args_doc}
class PermissionBindingArgs {
  /// The name of the client group resource that the permission is bound to.
  /// The client group needs to be a resource under the same namespace the permission binding is a part of.
  final pulumi.Input<String>? clientGroupName;

  /// Description for the Permission Binding resource.
  final pulumi.Input<String>? description;

  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The allowed permission.
  final pulumi.Input<String>? permission;

  /// The permission binding name.
  final pulumi.Input<String>? permissionBindingName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Topic Space resource that the permission is bound to.
  /// The Topic space needs to be a resource under the same namespace the permission binding is a part of.
  final pulumi.Input<String>? topicSpaceName;

  /// Creates a new [PermissionBindingArgs].
  /// [clientGroupName] The name of the client group resource that the permission is bound to.
  /// [description] Description for the Permission Binding resource.
  /// [namespaceName] Name of the namespace.
  /// [permission] The allowed permission.
  /// [permissionBindingName] The permission binding name.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicSpaceName] The name of the Topic Space resource that the permission is bound to.
  PermissionBindingArgs({
    this.clientGroupName,
    this.description,
    required this.namespaceName,
    this.permission,
    this.permissionBindingName,
    required this.resourceGroupName,
    this.topicSpaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupName': ?clientGroupName,
      'description': ?description,
      'namespaceName': namespaceName,
      'permission': ?permission,
      'permissionBindingName': ?permissionBindingName,
      'resourceGroupName': resourceGroupName,
      'topicSpaceName': ?topicSpaceName,
    };
  }

  factory PermissionBindingArgs.fromMap(Map<String, dynamic> map) {
    return PermissionBindingArgs(
      clientGroupName: (() {
        final guardedValue = map['clientGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      permission: (() {
        final guardedValue = map['permission'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissionBindingName: (() {
        final guardedValue = map['permissionBindingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      topicSpaceName: (() {
        final guardedValue = map['topicSpaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

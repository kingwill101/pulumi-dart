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
    pulumi.Output<String>? clientGroupName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespaceName,
    pulumi.Output<String>? permission,
    pulumi.Output<String>? permissionBindingName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? topicSpaceName,
  }) :
      clientGroupName = pulumi.Input.asOptionalInput<String>(clientGroupName),
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      permission = pulumi.Input.asOptionalInput<String>(permission),
      permissionBindingName = pulumi.Input.asOptionalInput<String>(permissionBindingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicSpaceName = pulumi.Input.asOptionalInput<String>(topicSpaceName);

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
      clientGroupName: map['clientGroupName'] == null ? null : pulumi.Output.create<String>(map['clientGroupName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      permission: map['permission'] == null ? null : pulumi.Output.create<String>(map['permission'] as String),
      permissionBindingName: map['permissionBindingName'] == null ? null : pulumi.Output.create<String>(map['permissionBindingName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicSpaceName: map['topicSpaceName'] == null ? null : pulumi.Output.create<String>(map['topicSpaceName'] as String),
    );
  }
}


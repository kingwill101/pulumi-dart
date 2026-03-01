// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_private_link_scoped_resource_args_doc}
/// Arguments for getPrivateLinkScopedResource.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_private_link_scoped_resource_args_doc}
class GetPrivateLinkScopedResourceArgs {
  /// The name of the scoped resource object.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Arc PrivateLinkScope resource.
  final pulumi.Input<String> scopeName;

  /// Creates a new [GetPrivateLinkScopedResourceArgs].
  /// [name] The name of the scoped resource object.
  /// [resourceGroupName] The name of the resource group.
  /// [scopeName] The name of the Azure Arc PrivateLinkScope resource.
  GetPrivateLinkScopedResourceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scopeName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeName = pulumi.Input.asInput<String>(scopeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
    };
  }

  factory GetPrivateLinkScopedResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopedResourceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeName: pulumi.Output.create<String>(map['scopeName'] as String),
    );
  }
}


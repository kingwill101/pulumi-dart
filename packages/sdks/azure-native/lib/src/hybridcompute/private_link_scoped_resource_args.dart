// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_private_link_scoped_resource_args_doc}
/// The set of arguments for PrivateLinkScopedResource.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_private_link_scoped_resource_args_doc}
class PrivateLinkScopedResourceArgs {
  /// The resource id of the scoped Azure monitor resource.
  final pulumi.Input<String>? linkedResourceId;
  /// The name of the scoped resource object.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Arc PrivateLinkScope resource.
  final pulumi.Input<String> scopeName;

  /// Creates a new [PrivateLinkScopedResourceArgs].
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the scoped resource object.
  /// [resourceGroupName] The name of the resource group.
  /// [scopeName] The name of the Azure Arc PrivateLinkScope resource.
  const PrivateLinkScopedResourceArgs({
    this.linkedResourceId,
    this.name,
    required this.resourceGroupName,
    required this.scopeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedResourceId': ?linkedResourceId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
    };
  }

  factory PrivateLinkScopedResourceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopedResourceArgs(
      linkedResourceId: (() { final guardedValue = map['linkedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeName: pulumi.Input.fromValue(map['scopeName'] as String),
    );
  }
}


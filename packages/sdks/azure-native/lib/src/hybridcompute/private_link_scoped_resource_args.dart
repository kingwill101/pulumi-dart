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
  PrivateLinkScopedResourceArgs({
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
      linkedResourceId: map['linkedResourceId'] == null ? null : (map['linkedResourceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeName: (map['scopeName'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_private_link_scoped_resource_args_doc}
/// The set of arguments for PrivateLinkScopedResource.
/// {@endtemplate}
/// {@macro pulumi_monitor_private_link_scoped_resource_args_doc}
class PrivateLinkScopedResourceArgs {
  /// The kind of scoped Azure monitor resource.
  final pulumi.Input<String>? kind;
  /// The resource id of the scoped Azure monitor resource.
  final pulumi.Input<String>? linkedResourceId;
  /// The name of the scoped resource object.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure Monitor PrivateLinkScope resource.
  final pulumi.Input<String> scopeName;
  /// The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  final pulumi.Input<String>? subscriptionLocation;

  /// Creates a new [PrivateLinkScopedResourceArgs].
  /// [kind] The kind of scoped Azure monitor resource.
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the scoped resource object.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeName] The name of the Azure Monitor PrivateLinkScope resource.
  /// [subscriptionLocation] The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  PrivateLinkScopedResourceArgs({
    this.kind,
    this.linkedResourceId,
    this.name,
    required this.resourceGroupName,
    required this.scopeName,
    this.subscriptionLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'linkedResourceId': ?linkedResourceId,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopeName': scopeName,
      'subscriptionLocation': ?subscriptionLocation,
    };
  }

  factory PrivateLinkScopedResourceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkScopedResourceArgs(
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      linkedResourceId: map['linkedResourceId'] == null ? null : (map['linkedResourceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeName: (map['scopeName'] as String).input(),
      subscriptionLocation: map['subscriptionLocation'] == null ? null : (map['subscriptionLocation'] as String).input(),
    );
  }
}


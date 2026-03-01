// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_get_shared_private_link_resource_args_doc}
/// Arguments for getSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_get_shared_private_link_resource_args_doc}
class GetSharedPrivateLinkResourceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Shared Private Link resource name.
  final pulumi.Input<String> sharedPrivateLinkResourceName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [GetSharedPrivateLinkResourceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedPrivateLinkResourceName] The Shared Private Link resource name.
  /// [watcherName] The database watcher name.
  GetSharedPrivateLinkResourceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sharedPrivateLinkResourceName,
    required pulumi.Output<String> watcherName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharedPrivateLinkResourceName = pulumi.Input.asInput<String>(sharedPrivateLinkResourceName),
      watcherName = pulumi.Input.asInput<String>(watcherName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sharedPrivateLinkResourceName': sharedPrivateLinkResourceName,
      'watcherName': watcherName,
    };
  }

  factory GetSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedPrivateLinkResourceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharedPrivateLinkResourceName: pulumi.Output.create<String>(map['sharedPrivateLinkResourceName'] as String),
      watcherName: pulumi.Output.create<String>(map['watcherName'] as String),
    );
  }
}


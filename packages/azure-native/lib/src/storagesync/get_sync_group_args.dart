// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_sync_group_args_doc}
/// Arguments for getSyncGroup.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_sync_group_args_doc}
class GetSyncGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [GetSyncGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  GetSyncGroupArgs({
    required String resourceGroupName,
    required String storageSyncServiceName,
    required String syncGroupName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
    };
  }

  factory GetSyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      storageSyncServiceName: map['storageSyncServiceName'] as String,
      syncGroupName: map['syncGroupName'] as String,
    );
  }
}


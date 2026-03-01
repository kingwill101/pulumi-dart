// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_registered_server_args_doc}
/// Arguments for getRegisteredServer.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_registered_server_args_doc}
class GetRegisteredServerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// GUID identifying the on-premises server.
  final pulumi.Input<String> serverId;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;

  /// Creates a new [GetRegisteredServerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverId] GUID identifying the on-premises server.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  GetRegisteredServerArgs({
    required String resourceGroupName,
    required String serverId,
    required String storageSyncServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverId = pulumi.Input.asInput<String>(serverId),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverId': serverId,
      'storageSyncServiceName': storageSyncServiceName,
    };
  }

  factory GetRegisteredServerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegisteredServerArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      serverId: map['serverId'] as String,
      storageSyncServiceName: map['storageSyncServiceName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_server_endpoint_args_doc}
/// The set of arguments for ServerEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagesync_server_endpoint_args_doc}
class ServerEndpointArgs {
  /// Cloud Tiering.
  final pulumi.Input<String>? cloudTiering;
  /// Friendly Name
  final pulumi.Input<String>? friendlyName;
  /// Policy for how namespace and files are recalled during FastDr.
  final pulumi.Input<String>? initialDownloadPolicy;
  /// Policy for how the initial upload sync session is performed.
  final pulumi.Input<String>? initialUploadPolicy;
  /// Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  final pulumi.Input<String>? localCacheMode;
  /// Offline data transfer
  final pulumi.Input<String>? offlineDataTransfer;
  /// Offline data transfer share name
  final pulumi.Input<String>? offlineDataTransferShareName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Server Endpoint object.
  final pulumi.Input<String>? serverEndpointName;
  /// Server Local path.
  final pulumi.Input<String>? serverLocalPath;
  /// Server Resource Id.
  final pulumi.Input<String>? serverResourceId;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;
  /// Tier files older than days.
  final pulumi.Input<int>? tierFilesOlderThanDays;
  /// Level of free space to be maintained by Cloud Tiering if it is enabled.
  final pulumi.Input<int>? volumeFreeSpacePercent;

  /// Creates a new [ServerEndpointArgs].
  /// [cloudTiering] Cloud Tiering.
  /// [friendlyName] Friendly Name
  /// [initialDownloadPolicy] Policy for how namespace and files are recalled during FastDr.
  /// [initialUploadPolicy] Policy for how the initial upload sync session is performed.
  /// [localCacheMode] Policy for enabling follow-the-sun business models: link local cache to cloud behavior to pre-populate before local access.
  /// [offlineDataTransfer] Offline data transfer
  /// [offlineDataTransferShareName] Offline data transfer share name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverEndpointName] Name of Server Endpoint object.
  /// [serverLocalPath] Server Local path.
  /// [serverResourceId] Server Resource Id.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  /// [tierFilesOlderThanDays] Tier files older than days.
  /// [volumeFreeSpacePercent] Level of free space to be maintained by Cloud Tiering if it is enabled.
  ServerEndpointArgs({
    String? cloudTiering,
    String? friendlyName,
    String? initialDownloadPolicy,
    String? initialUploadPolicy,
    String? localCacheMode,
    String? offlineDataTransfer,
    String? offlineDataTransferShareName,
    required String resourceGroupName,
    String? serverEndpointName,
    String? serverLocalPath,
    String? serverResourceId,
    required String storageSyncServiceName,
    required String syncGroupName,
    int? tierFilesOlderThanDays,
    int? volumeFreeSpacePercent,
  }) :
      cloudTiering = pulumi.Input.asOptionalInput<String>(cloudTiering),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      initialDownloadPolicy = pulumi.Input.asOptionalInput<String>(initialDownloadPolicy),
      initialUploadPolicy = pulumi.Input.asOptionalInput<String>(initialUploadPolicy),
      localCacheMode = pulumi.Input.asOptionalInput<String>(localCacheMode),
      offlineDataTransfer = pulumi.Input.asOptionalInput<String>(offlineDataTransfer),
      offlineDataTransferShareName = pulumi.Input.asOptionalInput<String>(offlineDataTransferShareName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverEndpointName = pulumi.Input.asOptionalInput<String>(serverEndpointName),
      serverLocalPath = pulumi.Input.asOptionalInput<String>(serverLocalPath),
      serverResourceId = pulumi.Input.asOptionalInput<String>(serverResourceId),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName),
      tierFilesOlderThanDays = pulumi.Input.asOptionalInput<int>(tierFilesOlderThanDays),
      volumeFreeSpacePercent = pulumi.Input.asOptionalInput<int>(volumeFreeSpacePercent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudTiering': ?cloudTiering,
      'friendlyName': ?friendlyName,
      'initialDownloadPolicy': ?initialDownloadPolicy,
      'initialUploadPolicy': ?initialUploadPolicy,
      'localCacheMode': ?localCacheMode,
      'offlineDataTransfer': ?offlineDataTransfer,
      'offlineDataTransferShareName': ?offlineDataTransferShareName,
      'resourceGroupName': resourceGroupName,
      'serverEndpointName': ?serverEndpointName,
      'serverLocalPath': ?serverLocalPath,
      'serverResourceId': ?serverResourceId,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
      'tierFilesOlderThanDays': ?tierFilesOlderThanDays,
      'volumeFreeSpacePercent': ?volumeFreeSpacePercent,
    };
  }

  factory ServerEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServerEndpointArgs(
      cloudTiering: map['cloudTiering'] == null ? null : map['cloudTiering'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      initialDownloadPolicy: map['initialDownloadPolicy'] == null ? null : map['initialDownloadPolicy'] as String,
      initialUploadPolicy: map['initialUploadPolicy'] == null ? null : map['initialUploadPolicy'] as String,
      localCacheMode: map['localCacheMode'] == null ? null : map['localCacheMode'] as String,
      offlineDataTransfer: map['offlineDataTransfer'] == null ? null : map['offlineDataTransfer'] as String,
      offlineDataTransferShareName: map['offlineDataTransferShareName'] == null ? null : map['offlineDataTransferShareName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverEndpointName: map['serverEndpointName'] == null ? null : map['serverEndpointName'] as String,
      serverLocalPath: map['serverLocalPath'] == null ? null : map['serverLocalPath'] as String,
      serverResourceId: map['serverResourceId'] == null ? null : map['serverResourceId'] as String,
      storageSyncServiceName: map['storageSyncServiceName'] as String,
      syncGroupName: map['syncGroupName'] as String,
      tierFilesOlderThanDays: map['tierFilesOlderThanDays'] == null ? null : map['tierFilesOlderThanDays'] as int,
      volumeFreeSpacePercent: map['volumeFreeSpacePercent'] == null ? null : map['volumeFreeSpacePercent'] as int,
    );
  }
}


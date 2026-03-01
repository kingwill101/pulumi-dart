// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_encryption_setting.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String creationOption;
  /// The size of the Snapshotted Disk in GB.
  final int diskSizeGb;
  final List<GetSnapshotEncryptionSetting> encryptionSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String osType;
  final String resourceGroupName;
  /// The reference to an existing snapshot.
  final String sourceResourceId;
  /// The URI to a Managed or Unmanaged Disk.
  final String sourceUri;
  /// The ID of an storage account.
  final String storageAccountId;
  final String timeCreated;
  /// Whether Trusted Launch is enabled for the Snapshot.
  final bool trustedLaunchEnabled;

  /// Creates a new [GetSnapshotResult].
  /// [creationOption] Required.
  /// [diskSizeGb] The size of the Snapshotted Disk in GB.
  /// [encryptionSettings] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [osType] Required.
  /// [resourceGroupName] Required.
  /// [sourceResourceId] The reference to an existing snapshot.
  /// [sourceUri] The URI to a Managed or Unmanaged Disk.
  /// [storageAccountId] The ID of an storage account.
  /// [timeCreated] Required.
  /// [trustedLaunchEnabled] Whether Trusted Launch is enabled for the Snapshot.
  GetSnapshotResult({
    required this.creationOption,
    required this.diskSizeGb,
    required this.encryptionSettings,
    required this.id,
    required this.name,
    required this.osType,
    required this.resourceGroupName,
    required this.sourceResourceId,
    required this.sourceUri,
    required this.storageAccountId,
    required this.timeCreated,
    required this.trustedLaunchEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationOption': creationOption,
      'diskSizeGb': diskSizeGb,
      'encryptionSettings': pulumi.Input.encodeList<GetSnapshotEncryptionSetting, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'id': id,
      'name': name,
      'osType': osType,
      'resourceGroupName': resourceGroupName,
      'sourceResourceId': sourceResourceId,
      'sourceUri': sourceUri,
      'storageAccountId': storageAccountId,
      'timeCreated': timeCreated,
      'trustedLaunchEnabled': trustedLaunchEnabled,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      creationOption: map['creationOption'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      encryptionSettings: pulumi.Input.decodeList<GetSnapshotEncryptionSetting>(map['encryptionSettings'], (value) => GetSnapshotEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      sourceUri: map['sourceUri'] as String,
      storageAccountId: map['storageAccountId'] as String,
      timeCreated: map['timeCreated'] as String,
      trustedLaunchEnabled: map['trustedLaunchEnabled'] as bool,
    );
  }
}


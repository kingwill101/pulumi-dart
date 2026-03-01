// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_share_hydration_profile.dart';

/// Storage profile for the directory on the target container.
class TargetStorageProfile {
  /// Azure file share profile for hydration of application folders not mounted on
  /// the container file system.
  final AzureFileShareHydrationProfile? azureFileShareProfile;
  /// Gets or sets the storage provider type on the target.
  /// Applicable when StorageProjectionType is not ContainerFileSystem.
  final String? hydrationStorageProviderType;
  /// Gets or sets the target persistent volume id.
  /// Applicable when StorageProjectionType is PersistentVolume and on using an
  /// existing PersistentVolume.
  final String? persistentVolumeId;
  /// Gets or sets the target storage access type.
  final String? storageAccessType;
  /// Gets or sets the target projection type.
  final String? storageProjectionType;
  /// Gets or sets the name of the projected volume on the target environment.
  final String? targetName;
  /// Gets or sets the storage size on the target.
  /// Applicable when StorageProjectionType is PersistentVolume and on creating a new
  /// PersistentVolume.
  final String? targetSize;

  /// Creates a new [TargetStorageProfile].
  /// [azureFileShareProfile] Azure file share profile for hydration of application folders not mounted on
  /// [hydrationStorageProviderType] Gets or sets the storage provider type on the target.
  /// [persistentVolumeId] Gets or sets the target persistent volume id.
  /// [storageAccessType] Gets or sets the target storage access type.
  /// [storageProjectionType] Gets or sets the target projection type.
  /// [targetName] Gets or sets the name of the projected volume on the target environment.
  /// [targetSize] Gets or sets the storage size on the target.
  TargetStorageProfile({
    this.azureFileShareProfile,
    this.hydrationStorageProviderType,
    this.persistentVolumeId,
    this.storageAccessType,
    this.storageProjectionType,
    this.targetName,
    this.targetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileShareProfile': ?azureFileShareProfile == null ? null : azureFileShareProfile!.toMap(),
      'hydrationStorageProviderType': ?hydrationStorageProviderType,
      'persistentVolumeId': ?persistentVolumeId,
      'storageAccessType': ?storageAccessType,
      'storageProjectionType': ?storageProjectionType,
      'targetName': ?targetName,
      'targetSize': ?targetSize,
    };
  }

  factory TargetStorageProfile.fromMap(Map<String, dynamic> map) {
    return TargetStorageProfile(
      azureFileShareProfile: map['azureFileShareProfile'] == null ? null : AzureFileShareHydrationProfile.fromMap((map['azureFileShareProfile'] as Map).cast<String, dynamic>()),
      hydrationStorageProviderType: map['hydrationStorageProviderType'] == null ? null : map['hydrationStorageProviderType'] as String,
      persistentVolumeId: map['persistentVolumeId'] == null ? null : map['persistentVolumeId'] as String,
      storageAccessType: map['storageAccessType'] == null ? null : map['storageAccessType'] as String,
      storageProjectionType: map['storageProjectionType'] == null ? null : map['storageProjectionType'] as String,
      targetName: map['targetName'] == null ? null : map['targetName'] as String,
      targetSize: map['targetSize'] == null ? null : map['targetSize'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_share_hydration_profile.dart';

/// Storage profile for the directory on the target container.
class TargetStorageProfile {
  /// Azure file share profile for hydration of application folders not mounted on
  /// the container file system.
  final pulumi.Input<AzureFileShareHydrationProfile>? azureFileShareProfile;

  /// Gets or sets the storage provider type on the target.
  /// Applicable when StorageProjectionType is not ContainerFileSystem.
  final pulumi.Input<String>? hydrationStorageProviderType;

  /// Gets or sets the target persistent volume id.
  /// Applicable when StorageProjectionType is PersistentVolume and on using an
  /// existing PersistentVolume.
  final pulumi.Input<String>? persistentVolumeId;

  /// Gets or sets the target storage access type.
  final pulumi.Input<String>? storageAccessType;

  /// Gets or sets the target projection type.
  final pulumi.Input<String>? storageProjectionType;

  /// Gets or sets the name of the projected volume on the target environment.
  final pulumi.Input<String>? targetName;

  /// Gets or sets the storage size on the target.
  /// Applicable when StorageProjectionType is PersistentVolume and on creating a new
  /// PersistentVolume.
  final pulumi.Input<String>? targetSize;

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
      'azureFileShareProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFileShareHydrationProfile,
            Map<String, dynamic>
          >(azureFileShareProfile, (value) => value.toMap()),
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
      azureFileShareProfile: (() {
        final guardedValue = map['azureFileShareProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFileShareHydrationProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hydrationStorageProviderType: (() {
        final guardedValue = map['hydrationStorageProviderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      persistentVolumeId: (() {
        final guardedValue = map['persistentVolumeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccessType: (() {
        final guardedValue = map['storageAccessType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageProjectionType: (() {
        final guardedValue = map['storageProjectionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetName: (() {
        final guardedValue = map['targetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetSize: (() {
        final guardedValue = map['targetSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

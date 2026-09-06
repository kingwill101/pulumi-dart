// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_storage_profile_blob_csidriver_response.dart';
import 'managed_cluster_storage_profile_disk_csidriver_response.dart';
import 'managed_cluster_storage_profile_file_csidriver_response.dart';
import 'managed_cluster_storage_profile_snapshot_controller_response.dart';

/// Storage profile for the container service cluster.
class ManagedClusterStorageProfileResponse {
  /// AzureBlob CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileBlobCSIDriverResponse?>? blobCSIDriver;
  /// AzureDisk CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileDiskCSIDriverResponse?>? diskCSIDriver;
  /// AzureFile CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileFileCSIDriverResponse?>? fileCSIDriver;
  /// Snapshot Controller settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileSnapshotControllerResponse?>? snapshotController;

  /// Creates a new [ManagedClusterStorageProfileResponse].
  /// [blobCSIDriver] AzureBlob CSI Driver settings for the storage profile.
  /// [diskCSIDriver] AzureDisk CSI Driver settings for the storage profile.
  /// [fileCSIDriver] AzureFile CSI Driver settings for the storage profile.
  /// [snapshotController] Snapshot Controller settings for the storage profile.
  const ManagedClusterStorageProfileResponse({
    this.blobCSIDriver,
    this.diskCSIDriver,
    this.fileCSIDriver,
    this.snapshotController,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileBlobCSIDriverResponse, Map<String, dynamic>>(blobCSIDriver, (value) => value.toMap()),
      'diskCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileDiskCSIDriverResponse, Map<String, dynamic>>(diskCSIDriver, (value) => value.toMap()),
      'fileCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileFileCSIDriverResponse, Map<String, dynamic>>(fileCSIDriver, (value) => value.toMap()),
      'snapshotController': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileSnapshotControllerResponse, Map<String, dynamic>>(snapshotController, (value) => value.toMap()),
    };
  }

  factory ManagedClusterStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileResponse(
      blobCSIDriver: (() { final guardedValue = map['blobCSIDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterStorageProfileBlobCSIDriverResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskCSIDriver: (() { final guardedValue = map['diskCSIDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterStorageProfileDiskCSIDriverResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileCSIDriver: (() { final guardedValue = map['fileCSIDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterStorageProfileFileCSIDriverResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotController: (() { final guardedValue = map['snapshotController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterStorageProfileSnapshotControllerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

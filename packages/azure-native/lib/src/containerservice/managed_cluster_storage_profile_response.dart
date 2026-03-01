// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_storage_profile_blob_csidriver_response.dart';
import 'managed_cluster_storage_profile_disk_csidriver_response.dart';
import 'managed_cluster_storage_profile_file_csidriver_response.dart';
import 'managed_cluster_storage_profile_snapshot_controller_response.dart';

/// Storage profile for the container service cluster.
class ManagedClusterStorageProfileResponse {
  /// AzureBlob CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileBlobCSIDriverResponse? blobCSIDriver;
  /// AzureDisk CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileDiskCSIDriverResponse? diskCSIDriver;
  /// AzureFile CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileFileCSIDriverResponse? fileCSIDriver;
  /// Snapshot Controller settings for the storage profile.
  final ManagedClusterStorageProfileSnapshotControllerResponse? snapshotController;

  /// Creates a new [ManagedClusterStorageProfileResponse].
  /// [blobCSIDriver] AzureBlob CSI Driver settings for the storage profile.
  /// [diskCSIDriver] AzureDisk CSI Driver settings for the storage profile.
  /// [fileCSIDriver] AzureFile CSI Driver settings for the storage profile.
  /// [snapshotController] Snapshot Controller settings for the storage profile.
  ManagedClusterStorageProfileResponse({
    this.blobCSIDriver,
    this.diskCSIDriver,
    this.fileCSIDriver,
    this.snapshotController,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobCSIDriver': ?blobCSIDriver == null ? null : blobCSIDriver!.toMap(),
      'diskCSIDriver': ?diskCSIDriver == null ? null : diskCSIDriver!.toMap(),
      'fileCSIDriver': ?fileCSIDriver == null ? null : fileCSIDriver!.toMap(),
      'snapshotController': ?snapshotController == null ? null : snapshotController!.toMap(),
    };
  }

  factory ManagedClusterStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfileResponse(
      blobCSIDriver: map['blobCSIDriver'] == null ? null : ManagedClusterStorageProfileBlobCSIDriverResponse.fromMap((map['blobCSIDriver'] as Map).cast<String, dynamic>()),
      diskCSIDriver: map['diskCSIDriver'] == null ? null : ManagedClusterStorageProfileDiskCSIDriverResponse.fromMap((map['diskCSIDriver'] as Map).cast<String, dynamic>()),
      fileCSIDriver: map['fileCSIDriver'] == null ? null : ManagedClusterStorageProfileFileCSIDriverResponse.fromMap((map['fileCSIDriver'] as Map).cast<String, dynamic>()),
      snapshotController: map['snapshotController'] == null ? null : ManagedClusterStorageProfileSnapshotControllerResponse.fromMap((map['snapshotController'] as Map).cast<String, dynamic>()),
    );
  }
}


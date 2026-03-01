// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_storage_profile_blob_csidriver.dart';
import 'managed_cluster_storage_profile_disk_csidriver.dart';
import 'managed_cluster_storage_profile_file_csidriver.dart';
import 'managed_cluster_storage_profile_snapshot_controller.dart';

/// Storage profile for the container service cluster.
class ManagedClusterStorageProfile {
  /// AzureBlob CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileBlobCSIDriver? blobCSIDriver;
  /// AzureDisk CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileDiskCSIDriver? diskCSIDriver;
  /// AzureFile CSI Driver settings for the storage profile.
  final ManagedClusterStorageProfileFileCSIDriver? fileCSIDriver;
  /// Snapshot Controller settings for the storage profile.
  final ManagedClusterStorageProfileSnapshotController? snapshotController;

  /// Creates a new [ManagedClusterStorageProfile].
  /// [blobCSIDriver] AzureBlob CSI Driver settings for the storage profile.
  /// [diskCSIDriver] AzureDisk CSI Driver settings for the storage profile.
  /// [fileCSIDriver] AzureFile CSI Driver settings for the storage profile.
  /// [snapshotController] Snapshot Controller settings for the storage profile.
  ManagedClusterStorageProfile({
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

  factory ManagedClusterStorageProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfile(
      blobCSIDriver: map['blobCSIDriver'] == null ? null : ManagedClusterStorageProfileBlobCSIDriver.fromMap((map['blobCSIDriver'] as Map).cast<String, dynamic>()),
      diskCSIDriver: map['diskCSIDriver'] == null ? null : ManagedClusterStorageProfileDiskCSIDriver.fromMap((map['diskCSIDriver'] as Map).cast<String, dynamic>()),
      fileCSIDriver: map['fileCSIDriver'] == null ? null : ManagedClusterStorageProfileFileCSIDriver.fromMap((map['fileCSIDriver'] as Map).cast<String, dynamic>()),
      snapshotController: map['snapshotController'] == null ? null : ManagedClusterStorageProfileSnapshotController.fromMap((map['snapshotController'] as Map).cast<String, dynamic>()),
    );
  }
}


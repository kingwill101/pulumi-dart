// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_storage_profile_blob_csidriver.dart';
import 'managed_cluster_storage_profile_disk_csidriver.dart';
import 'managed_cluster_storage_profile_file_csidriver.dart';
import 'managed_cluster_storage_profile_snapshot_controller.dart';

/// Storage profile for the container service cluster.
class ManagedClusterStorageProfile {
  /// AzureBlob CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileBlobCSIDriver>? blobCSIDriver;
  /// AzureDisk CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileDiskCSIDriver>? diskCSIDriver;
  /// AzureFile CSI Driver settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileFileCSIDriver>? fileCSIDriver;
  /// Snapshot Controller settings for the storage profile.
  final pulumi.Input<ManagedClusterStorageProfileSnapshotController>? snapshotController;

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
      'blobCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileBlobCSIDriver, Map<String, dynamic>>(blobCSIDriver, (value) => value.toMap()),
      'diskCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileDiskCSIDriver, Map<String, dynamic>>(diskCSIDriver, (value) => value.toMap()),
      'fileCSIDriver': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileFileCSIDriver, Map<String, dynamic>>(fileCSIDriver, (value) => value.toMap()),
      'snapshotController': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfileSnapshotController, Map<String, dynamic>>(snapshotController, (value) => value.toMap()),
    };
  }

  factory ManagedClusterStorageProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterStorageProfile(
      blobCSIDriver: map['blobCSIDriver'] == null ? null : (ManagedClusterStorageProfileBlobCSIDriver.fromMap((map['blobCSIDriver']! as Map).cast<String, dynamic>())).input(),
      diskCSIDriver: map['diskCSIDriver'] == null ? null : (ManagedClusterStorageProfileDiskCSIDriver.fromMap((map['diskCSIDriver']! as Map).cast<String, dynamic>())).input(),
      fileCSIDriver: map['fileCSIDriver'] == null ? null : (ManagedClusterStorageProfileFileCSIDriver.fromMap((map['fileCSIDriver']! as Map).cast<String, dynamic>())).input(),
      snapshotController: map['snapshotController'] == null ? null : (ManagedClusterStorageProfileSnapshotController.fromMap((map['snapshotController']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_source_vmdata_disk.dart';
import 'restore_point_source_vmosdisk.dart';

/// Describes the storage profile.
class RestorePointSourceVMStorageProfile {
  /// Gets the data disks of the VM captured at the time of the restore point creation.
  final List<RestorePointSourceVMDataDisk>? dataDisks;
  /// Gets the OS disk of the VM captured at the time of the restore point creation.
  final RestorePointSourceVMOSDisk? osDisk;

  /// Creates a new [RestorePointSourceVMStorageProfile].
  /// [dataDisks] Gets the data disks of the VM captured at the time of the restore point creation.
  /// [osDisk] Gets the OS disk of the VM captured at the time of the restore point creation.
  RestorePointSourceVMStorageProfile({
    this.dataDisks,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<RestorePointSourceVMDataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
    };
  }

  factory RestorePointSourceVMStorageProfile.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<RestorePointSourceVMDataDisk>(map['dataDisks'], (value) => RestorePointSourceVMDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      osDisk: map['osDisk'] == null ? null : RestorePointSourceVMOSDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
    );
  }
}


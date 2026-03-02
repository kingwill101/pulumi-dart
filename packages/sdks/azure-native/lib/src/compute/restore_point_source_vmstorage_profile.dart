// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_source_vmdata_disk.dart';
import 'restore_point_source_vmosdisk.dart';

/// Describes the storage profile.
class RestorePointSourceVMStorageProfile {
  /// Gets the data disks of the VM captured at the time of the restore point creation.
  final pulumi.Input<List<RestorePointSourceVMDataDisk>>? dataDisks;
  /// Gets the OS disk of the VM captured at the time of the restore point creation.
  final pulumi.Input<RestorePointSourceVMOSDisk>? osDisk;

  /// Creates a new [RestorePointSourceVMStorageProfile].
  /// [dataDisks] Gets the data disks of the VM captured at the time of the restore point creation.
  /// [osDisk] Gets the OS disk of the VM captured at the time of the restore point creation.
  RestorePointSourceVMStorageProfile({
    this.dataDisks,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<RestorePointSourceVMDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<RestorePointSourceVMDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<RestorePointSourceVMOSDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory RestorePointSourceVMStorageProfile.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<RestorePointSourceVMDataDisk>(map['dataDisks'], (value) => RestorePointSourceVMDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDisk: map['osDisk'] == null ? null : (RestorePointSourceVMOSDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


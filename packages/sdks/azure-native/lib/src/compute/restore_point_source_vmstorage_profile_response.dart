// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_source_vmdata_disk_response.dart';
import 'restore_point_source_vmosdisk_response.dart';

/// Describes the storage profile.
class RestorePointSourceVMStorageProfileResponse {
  /// Gets the data disks of the VM captured at the time of the restore point creation.
  final pulumi.Input<List<RestorePointSourceVMDataDiskResponse>>? dataDisks;
  /// Gets the disk controller type of the VM captured at the time of the restore point creation.
  final pulumi.Input<String> diskControllerType;
  /// Gets the OS disk of the VM captured at the time of the restore point creation.
  final pulumi.Input<RestorePointSourceVMOSDiskResponse>? osDisk;

  /// Creates a new [RestorePointSourceVMStorageProfileResponse].
  /// [dataDisks] Gets the data disks of the VM captured at the time of the restore point creation.
  /// [diskControllerType] Gets the disk controller type of the VM captured at the time of the restore point creation.
  /// [osDisk] Gets the OS disk of the VM captured at the time of the restore point creation.
  RestorePointSourceVMStorageProfileResponse({
    this.dataDisks,
    required this.diskControllerType,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<RestorePointSourceVMDataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<RestorePointSourceVMDataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskControllerType': diskControllerType,
      'osDisk': ?pulumi.Input.mapOptionalInputValue<RestorePointSourceVMOSDiskResponse, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory RestorePointSourceVMStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMStorageProfileResponse(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<RestorePointSourceVMDataDiskResponse>(map['dataDisks'], (value) => RestorePointSourceVMDataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskControllerType: (map['diskControllerType'] as String).input(),
      osDisk: map['osDisk'] == null ? null : (RestorePointSourceVMOSDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


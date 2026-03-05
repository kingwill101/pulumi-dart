// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an Aml Instance DataDisk.
class ComputeInstanceDataDiskResponse {
  /// Caching type of Data Disk.
  final pulumi.Input<String>? caching;
  /// The initial disk size in gigabytes.
  final pulumi.Input<int>? diskSizeGB;
  /// The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun.
  final pulumi.Input<int>? lun;
  /// type of this storage account.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [ComputeInstanceDataDiskResponse].
  /// [caching] Caching type of Data Disk.
  /// [diskSizeGB] The initial disk size in gigabytes.
  /// [lun] The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun.
  /// [storageAccountType] type of this storage account.
  ComputeInstanceDataDiskResponse({
    this.caching,
    this.diskSizeGB,
    this.lun,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGB': ?diskSizeGB,
      'lun': ?lun,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ComputeInstanceDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceDataDiskResponse(
      caching: (() { final guardedValue = map['caching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


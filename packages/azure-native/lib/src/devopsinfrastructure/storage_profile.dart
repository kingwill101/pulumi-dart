// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk.dart';

/// The storage profile of the VMSS.
class StorageProfile {
  /// A list of empty data disks to attach.
  final List<DataDisk>? dataDisks;
  /// The Azure SKU name of the machines in the pool.
  final String? osDiskStorageAccountType;

  /// Creates a new [StorageProfile].
  /// [dataDisks] A list of empty data disks to attach.
  /// [osDiskStorageAccountType] The Azure SKU name of the machines in the pool.
  StorageProfile({
    this.dataDisks,
    this.osDiskStorageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'osDiskStorageAccountType': ?osDiskStorageAccountType,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<DataDisk>(map['dataDisks'], (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>())),
      osDiskStorageAccountType: map['osDiskStorageAccountType'] == null ? null : map['osDiskStorageAccountType'] as String,
    );
  }
}


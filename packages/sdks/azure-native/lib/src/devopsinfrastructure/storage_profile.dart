// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk.dart';

/// The storage profile of the VMSS.
class StorageProfile {
  /// A list of empty data disks to attach.
  final pulumi.Input<List<DataDisk>>? dataDisks;
  /// The Azure SKU name of the machines in the pool.
  final pulumi.Input<String>? osDiskStorageAccountType;

  /// Creates a new [StorageProfile].
  /// [dataDisks] A list of empty data disks to attach.
  /// [osDiskStorageAccountType] The Azure SKU name of the machines in the pool.
  const StorageProfile({
    this.dataDisks,
    this.osDiskStorageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskStorageAccountType': ?osDiskStorageAccountType,
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDisk>(guardedValue, (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osDiskStorageAccountType: (() { final guardedValue = map['osDiskStorageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


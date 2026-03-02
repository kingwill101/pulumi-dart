// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_response.dart';

/// The storage profile of the VMSS.
class StorageProfileResponse {
  /// A list of empty data disks to attach.
  final pulumi.Input<List<DataDiskResponse>>? dataDisks;
  /// The Azure SKU name of the machines in the pool.
  final pulumi.Input<String>? osDiskStorageAccountType;

  /// Creates a new [StorageProfileResponse].
  /// [dataDisks] A list of empty data disks to attach.
  /// [osDiskStorageAccountType] The Azure SKU name of the machines in the pool.
  StorageProfileResponse({
    this.dataDisks,
    this.osDiskStorageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskStorageAccountType': ?osDiskStorageAccountType,
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<DataDiskResponse>(map['dataDisks'], (value) => DataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDiskStorageAccountType: map['osDiskStorageAccountType'] == null ? null : (map['osDiskStorageAccountType'] as String).input(),
    );
  }
}


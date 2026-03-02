// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';
import 'encryption.dart';

/// Azure Disk Pool Properties
class AzureDisk {
  /// Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final pulumi.Input<List<Disk>>? disks;
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final pulumi.Input<Encryption>? encryption;
  /// Sku name
  final pulumi.Input<String>? skuName;

  /// Creates a new [AzureDisk].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  /// [encryption] Encryption specifies the encryption configuration for the Azure Disk pool
  /// [skuName] Sku name
  AzureDisk({
    this.disks,
    this.encryption,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'skuName': ?skuName,
    };
  }

  factory AzureDisk.fromMap(Map<String, dynamic> map) {
    return AzureDisk(
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<Disk>(map['disks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
    );
  }
}


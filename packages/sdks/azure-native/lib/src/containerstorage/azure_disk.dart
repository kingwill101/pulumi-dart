// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';
import 'encryption.dart';

/// Azure Disk Pool Properties
class AzureDisk {
  /// Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final pulumi.Input<List<Disk>>? disks;
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final pulumi.Input<Encryption>? encryption;
  /// Sku name
  final pulumi.Input<String>? skuName;

  /// Creates a new [AzureDisk].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. &lt;nodename&gt;:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  /// [encryption] Encryption specifies the encryption configuration for the Azure Disk pool
  /// [skuName] Sku name
  const AzureDisk({
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
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Disk>(guardedValue, (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

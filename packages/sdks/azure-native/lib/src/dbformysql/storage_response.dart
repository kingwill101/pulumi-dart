// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class StorageResponse {
  /// Enable Storage Auto Grow or not.
  final pulumi.Input<String?>? autoGrow;
  /// Enable IO Auto Scaling or not.
  final pulumi.Input<String?>? autoIoScaling;
  /// Storage IOPS for a server.
  final pulumi.Input<int?>? iops;
  /// Enable Log On Disk or not.
  final pulumi.Input<String?>? logOnDisk;
  /// The redundant type of the server storage. The parameter is used for server creation.
  final pulumi.Input<String?>? storageRedundancy;
  /// Max storage size allowed for a server.
  final pulumi.Input<int?>? storageSizeGB;
  /// The sku name of the server storage.
  final pulumi.Input<String> storageSku;

  /// Creates a new [StorageResponse].
  /// [autoGrow] Enable Storage Auto Grow or not.
  /// [autoIoScaling] Enable IO Auto Scaling or not.
  /// [iops] Storage IOPS for a server.
  /// [logOnDisk] Enable Log On Disk or not.
  /// [storageRedundancy] The redundant type of the server storage. The parameter is used for server creation.
  /// [storageSizeGB] Max storage size allowed for a server.
  /// [storageSku] The sku name of the server storage.
  StorageResponse({
    pulumi.Input<String?>? autoGrow,
    pulumi.Input<String?>? autoIoScaling,
    this.iops,
    pulumi.Input<String?>? logOnDisk,
    pulumi.Input<String?>? storageRedundancy,
    this.storageSizeGB,
    required this.storageSku,
  }) : autoGrow = autoGrow ?? pulumi.Input.fromValue('Disabled'), autoIoScaling = autoIoScaling ?? pulumi.Input.fromValue('Enabled'), logOnDisk = logOnDisk ?? pulumi.Input.fromValue('Disabled'), storageRedundancy = storageRedundancy ?? pulumi.Input.fromValue('LocalRedundancy');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrow': ?autoGrow,
      'autoIoScaling': ?autoIoScaling,
      'iops': ?iops,
      'logOnDisk': ?logOnDisk,
      'storageRedundancy': ?storageRedundancy,
      'storageSizeGB': ?storageSizeGB,
      'storageSku': storageSku,
    };
  }

  factory StorageResponse.fromMap(Map<String, dynamic> map) {
    return StorageResponse(
      autoGrow: (() { final guardedValue = map['autoGrow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoIoScaling: (() { final guardedValue = map['autoIoScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      logOnDisk: (() { final guardedValue = map['logOnDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageRedundancy: (() { final guardedValue = map['storageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSizeGB: (() { final guardedValue = map['storageSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      storageSku: pulumi.Input.fromValue(map['storageSku'] as String),
    );
  }
}

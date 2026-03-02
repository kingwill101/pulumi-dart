// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Profile properties of a server
class StorageResponse {
  /// Enable Storage Auto Grow or not.
  final pulumi.Input<String>? autoGrow;
  /// Enable IO Auto Scaling or not.
  final pulumi.Input<String>? autoIoScaling;
  /// Storage IOPS for a server.
  final pulumi.Input<int>? iops;
  /// Enable Log On Disk or not.
  final pulumi.Input<String>? logOnDisk;
  /// The redundant type of the server storage. The parameter is used for server creation.
  final pulumi.Input<String>? storageRedundancy;
  /// Max storage size allowed for a server.
  final pulumi.Input<int>? storageSizeGB;
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
    this.autoGrow,
    this.autoIoScaling,
    this.iops,
    this.logOnDisk,
    this.storageRedundancy,
    this.storageSizeGB,
    required this.storageSku,
  });

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
      autoGrow: map['autoGrow'] == null ? null : (map['autoGrow']! as String).input(),
      autoIoScaling: map['autoIoScaling'] == null ? null : (map['autoIoScaling']! as String).input(),
      iops: map['iops'] == null ? null : (map['iops']! as int).input(),
      logOnDisk: map['logOnDisk'] == null ? null : (map['logOnDisk']! as String).input(),
      storageRedundancy: map['storageRedundancy'] == null ? null : (map['storageRedundancy']! as String).input(),
      storageSizeGB: map['storageSizeGB'] == null ? null : (map['storageSizeGB']! as int).input(),
      storageSku: (map['storageSku'] as String).input(),
    );
  }
}


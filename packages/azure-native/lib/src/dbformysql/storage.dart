// ignore_for_file: unused_element, unnecessary_cast


/// Storage Profile properties of a server
class Storage {
  /// Enable Storage Auto Grow or not.
  final String? autoGrow;
  /// Enable IO Auto Scaling or not.
  final String? autoIoScaling;
  /// Storage IOPS for a server.
  final int? iops;
  /// Enable Log On Disk or not.
  final String? logOnDisk;
  /// The redundant type of the server storage. The parameter is used for server creation.
  final String? storageRedundancy;
  /// Max storage size allowed for a server.
  final int? storageSizeGB;

  /// Creates a new [Storage].
  /// [autoGrow] Enable Storage Auto Grow or not.
  /// [autoIoScaling] Enable IO Auto Scaling or not.
  /// [iops] Storage IOPS for a server.
  /// [logOnDisk] Enable Log On Disk or not.
  /// [storageRedundancy] The redundant type of the server storage. The parameter is used for server creation.
  /// [storageSizeGB] Max storage size allowed for a server.
  Storage({
    this.autoGrow,
    this.autoIoScaling,
    this.iops,
    this.logOnDisk,
    this.storageRedundancy,
    this.storageSizeGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrow': ?autoGrow,
      'autoIoScaling': ?autoIoScaling,
      'iops': ?iops,
      'logOnDisk': ?logOnDisk,
      'storageRedundancy': ?storageRedundancy,
      'storageSizeGB': ?storageSizeGB,
    };
  }

  factory Storage.fromMap(Map<String, dynamic> map) {
    return Storage(
      autoGrow: map['autoGrow'] == null ? null : map['autoGrow'] as String,
      autoIoScaling: map['autoIoScaling'] == null ? null : map['autoIoScaling'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      logOnDisk: map['logOnDisk'] == null ? null : map['logOnDisk'] as String,
      storageRedundancy: map['storageRedundancy'] == null ? null : map['storageRedundancy'] as String,
      storageSizeGB: map['storageSizeGB'] == null ? null : map['storageSizeGB'] as int,
    );
  }
}


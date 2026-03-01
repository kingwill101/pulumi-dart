// ignore_for_file: unused_element, unnecessary_cast


class OpenZfsFileSystemDiskIopsConfiguration {
  /// The total number of SSD IOPS provisioned for the file system.
  final int? iops;
  /// Specifies whether the number of IOPS for the file system is using the system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  final String? mode;

  /// Creates a new [OpenZfsFileSystemDiskIopsConfiguration].
  /// [iops] The total number of SSD IOPS provisioned for the file system.
  /// [mode] Specifies whether the number of IOPS for the file system is using the system. Valid values are `AUTOMATIC` and `USER_PROVISIONED`. Default value is `AUTOMATIC`.
  OpenZfsFileSystemDiskIopsConfiguration({
    this.iops,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'mode': ?mode,
    };
  }

  factory OpenZfsFileSystemDiskIopsConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemDiskIopsConfiguration(
      iops: map['iops'] == null ? null : map['iops'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}


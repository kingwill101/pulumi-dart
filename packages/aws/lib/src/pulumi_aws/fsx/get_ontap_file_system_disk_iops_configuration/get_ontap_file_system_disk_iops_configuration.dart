// ignore_for_file: unused_element, unnecessary_cast

class GetOntapFileSystemDiskIopsConfiguration {
  /// The total number of SSD IOPS provisioned for the file system.
  final int iops;

  /// Specifies whether the file system is using the `AUTOMATIC` setting of SSD IOPS of 3 IOPS per GB of storage capacity, or if it using a `USER_PROVISIONED` value.
  final String mode;

  GetOntapFileSystemDiskIopsConfiguration({
    required this.iops,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iops'] = iops;
    map['mode'] = mode;
    return map;
  }

  factory GetOntapFileSystemDiskIopsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetOntapFileSystemDiskIopsConfiguration(
      iops: map['iops'] as int,
      mode: map['mode'] as String,
    );
  }
}

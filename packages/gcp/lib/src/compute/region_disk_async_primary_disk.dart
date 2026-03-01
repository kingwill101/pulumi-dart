// ignore_for_file: unused_element, unnecessary_cast

class RegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  /// Creates a new [RegionDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  RegionDiskAsyncPrimaryDisk({required this.disk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': disk};
  }

  factory RegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return RegionDiskAsyncPrimaryDisk(disk: map['disk'] as String);
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetRegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  /// Creates a new [GetRegionDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  GetRegionDiskAsyncPrimaryDisk({required this.disk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': disk};
  }

  factory GetRegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskAsyncPrimaryDisk(disk: map['disk'] as String);
  }
}

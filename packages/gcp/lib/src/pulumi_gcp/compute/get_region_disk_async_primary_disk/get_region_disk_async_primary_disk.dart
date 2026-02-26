// ignore_for_file: unused_element, unnecessary_cast

class GetRegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  GetRegionDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    return map;
  }

  factory GetRegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskAsyncPrimaryDisk(
      disk: map['disk'] as String,
    );
  }
}

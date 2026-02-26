// ignore_for_file: unused_element, unnecessary_cast

class RegionDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  RegionDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    return map;
  }

  factory RegionDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return RegionDiskAsyncPrimaryDisk(
      disk: map['disk'] as String,
    );
  }
}

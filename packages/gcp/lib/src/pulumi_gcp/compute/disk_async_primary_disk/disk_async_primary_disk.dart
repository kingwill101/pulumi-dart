// ignore_for_file: unused_element, unnecessary_cast

class DiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  DiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    return map;
  }

  factory DiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return DiskAsyncPrimaryDisk(
      disk: map['disk'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  GetDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    return map;
  }

  factory GetDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetDiskAsyncPrimaryDisk(
      disk: map['disk'] as String,
    );
  }
}

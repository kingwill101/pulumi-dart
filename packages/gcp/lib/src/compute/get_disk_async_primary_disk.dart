// ignore_for_file: unused_element, unnecessary_cast


class GetDiskAsyncPrimaryDisk {
  /// Primary disk for asynchronous disk replication.
  final String disk;

  /// Creates a new [GetDiskAsyncPrimaryDisk].
  /// [disk] Primary disk for asynchronous disk replication.
  GetDiskAsyncPrimaryDisk({
    required this.disk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
    };
  }

  factory GetDiskAsyncPrimaryDisk.fromMap(Map<String, dynamic> map) {
    return GetDiskAsyncPrimaryDisk(
      disk: map['disk'] as String,
    );
  }
}


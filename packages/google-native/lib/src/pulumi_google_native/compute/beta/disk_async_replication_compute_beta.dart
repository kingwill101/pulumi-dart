// ignore_for_file: unused_element, unnecessary_cast

class DiskAsyncReplicationComputeBeta {
  /// The other disk asynchronously replicated to or from the current disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final String? disk;

  DiskAsyncReplicationComputeBeta({
    this.disk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskValue = disk;
    if (diskValue != null) {
      map['disk'] = diskValue;
    }
    return map;
  }

  factory DiskAsyncReplicationComputeBeta.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationComputeBeta(
      disk: map['disk'] == null ? null : map['disk'] as String,
    );
  }
}

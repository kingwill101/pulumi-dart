// ignore_for_file: unused_element, unnecessary_cast

class DiskAsyncReplicationSecondaryDisk {
  /// The secondary disk.
  final String disk;

  /// Output-only. Status of replication on the secondary disk.
  ///
  /// - - -
  final String? state;

  /// Creates a new [DiskAsyncReplicationSecondaryDisk].
  /// [disk] The secondary disk.
  /// [state] Output-only. Status of replication on the secondary disk.
  DiskAsyncReplicationSecondaryDisk({required this.disk, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': disk, 'state': ?state};
  }

  factory DiskAsyncReplicationSecondaryDisk.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationSecondaryDisk(
      disk: map['disk'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

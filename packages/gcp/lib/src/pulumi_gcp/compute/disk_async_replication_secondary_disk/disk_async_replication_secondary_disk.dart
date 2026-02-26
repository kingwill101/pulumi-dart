// ignore_for_file: unused_element, unnecessary_cast

class DiskAsyncReplicationSecondaryDisk {
  /// The secondary disk.
  final String disk;

  /// Output-only. Status of replication on the secondary disk.
  ///
  /// - - -
  final String? state;

  DiskAsyncReplicationSecondaryDisk({
    required this.disk,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory DiskAsyncReplicationSecondaryDisk.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationSecondaryDisk(
      disk: map['disk'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

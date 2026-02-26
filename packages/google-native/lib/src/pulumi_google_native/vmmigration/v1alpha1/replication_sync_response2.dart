// ignore_for_file: unused_element, unnecessary_cast

/// ReplicationSync contain information about the last replica sync to the cloud.
class ReplicationSyncResponse2 {
  /// The most updated snapshot created time in the source that finished replication.
  final String lastSyncTime;

  ReplicationSyncResponse2({
    required this.lastSyncTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastSyncTime'] = lastSyncTime;
    return map;
  }

  factory ReplicationSyncResponse2.fromMap(Map<String, dynamic> map) {
    return ReplicationSyncResponse2(
      lastSyncTime: map['lastSyncTime'] as String,
    );
  }
}

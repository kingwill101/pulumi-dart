// ignore_for_file: unused_element, unnecessary_cast

/// ReplicationSync contain information about the last replica sync to the cloud.
class ReplicationSyncResponse {
  /// The most updated snapshot created time in the source that finished replication.
  final String lastSyncTime;

  ReplicationSyncResponse({
    required this.lastSyncTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastSyncTime'] = lastSyncTime;
    return map;
  }

  factory ReplicationSyncResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationSyncResponse(
      lastSyncTime: map['lastSyncTime'] as String,
    );
  }
}

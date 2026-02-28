// ignore_for_file: unused_element, unnecessary_cast


/// ReplicationSync contain information about the last replica sync to the cloud.
class ReplicationSyncResponse {
  /// The most updated snapshot created time in the source that finished replication.
  final String lastSyncTime;

  /// Creates a new [ReplicationSyncResponse].
  /// [lastSyncTime] The most updated snapshot created time in the source that finished replication.
  ReplicationSyncResponse({
    required this.lastSyncTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSyncTime': lastSyncTime,
    };
  }

  factory ReplicationSyncResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationSyncResponse(
      lastSyncTime: map['lastSyncTime'] as String,
    );
  }
}


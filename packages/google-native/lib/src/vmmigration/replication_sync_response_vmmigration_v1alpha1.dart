// ignore_for_file: unused_element, unnecessary_cast

/// ReplicationSync contain information about the last replica sync to the cloud.
class ReplicationSyncResponseVmmigrationV1alpha1 {
  /// The most updated snapshot created time in the source that finished replication.
  final String lastSyncTime;

  /// Creates a new [ReplicationSyncResponseVmmigrationV1alpha1].
  /// [lastSyncTime] The most updated snapshot created time in the source that finished replication.
  ReplicationSyncResponseVmmigrationV1alpha1({
    required this.lastSyncTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastSyncTime'] = lastSyncTime;
    return map;
  }

  factory ReplicationSyncResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReplicationSyncResponseVmmigrationV1alpha1(
      lastSyncTime: map['lastSyncTime'] as String,
    );
  }
}

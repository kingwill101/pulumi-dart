// ignore_for_file: unused_element, unnecessary_cast

class ReplicatorReplicationInfoListTopicReplicationStartingPosition {
  /// The type of replication starting position. Supports `LATEST` and `EARLIEST`.
  final String? type;

  ReplicatorReplicationInfoListTopicReplicationStartingPosition({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ReplicatorReplicationInfoListTopicReplicationStartingPosition.fromMap(
      Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplicationStartingPosition(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

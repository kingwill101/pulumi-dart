// ignore_for_file: unused_element, unnecessary_cast

class ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration {
  /// The type of topic configuration name. Supports `PREFIXED_WITH_SOURCE_CLUSTER_ALIAS` and `IDENTICAL`.
  final String? type;

  ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration({
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

  factory ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

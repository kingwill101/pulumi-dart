// ignore_for_file: unused_element, unnecessary_cast

class TableTableReplicationInfo {
  /// The interval at which the source
  /// materialized view is polled for updates. The default is 300000.
  final int? replicationIntervalMs;

  /// The ID of the source dataset.
  final String sourceDatasetId;

  /// The ID of the source project.
  final String sourceProjectId;

  /// The ID of the source materialized view.
  final String sourceTableId;

  TableTableReplicationInfo({
    this.replicationIntervalMs,
    required this.sourceDatasetId,
    required this.sourceProjectId,
    required this.sourceTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replicationIntervalMsValue = replicationIntervalMs;
    if (replicationIntervalMsValue != null) {
      map['replicationIntervalMs'] = replicationIntervalMsValue;
    }
    map['sourceDatasetId'] = sourceDatasetId;
    map['sourceProjectId'] = sourceProjectId;
    map['sourceTableId'] = sourceTableId;
    return map;
  }

  factory TableTableReplicationInfo.fromMap(Map<String, dynamic> map) {
    return TableTableReplicationInfo(
      replicationIntervalMs: map['replicationIntervalMs'] == null
          ? null
          : map['replicationIntervalMs'] as int,
      sourceDatasetId: map['sourceDatasetId'] as String,
      sourceProjectId: map['sourceProjectId'] as String,
      sourceTableId: map['sourceTableId'] as String,
    );
  }
}

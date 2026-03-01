// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceHostInstanceInfo {
  /// The time when the secondary instance completed the synchronization of data from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final String dataSyncTime;
  /// The time when the secondary instance received logs from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final String logSyncTime;
  /// The ID of the instance.
  final String nodeId;
  /// The type of the node.
  final String nodeType;
  /// The region ID of the instance.
  final String regionId;
  /// The synchronization status.
  final String syncStatus;
  /// The ID of the zone.
  final String zoneId;

  /// Creates a new [GetInstancesInstanceHostInstanceInfo].
  /// [dataSyncTime] The time when the secondary instance completed the synchronization of data from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [logSyncTime] The time when the secondary instance received logs from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [nodeId] The ID of the instance.
  /// [nodeType] The type of the node.
  /// [regionId] The region ID of the instance.
  /// [syncStatus] The synchronization status.
  /// [zoneId] The ID of the zone.
  GetInstancesInstanceHostInstanceInfo({
    required this.dataSyncTime,
    required this.logSyncTime,
    required this.nodeId,
    required this.nodeType,
    required this.regionId,
    required this.syncStatus,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSyncTime': dataSyncTime,
      'logSyncTime': logSyncTime,
      'nodeId': nodeId,
      'nodeType': nodeType,
      'regionId': regionId,
      'syncStatus': syncStatus,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstanceHostInstanceInfo.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceHostInstanceInfo(
      dataSyncTime: map['dataSyncTime'] as String,
      logSyncTime: map['logSyncTime'] as String,
      nodeId: map['nodeId'] as String,
      nodeType: map['nodeType'] as String,
      regionId: map['regionId'] as String,
      syncStatus: map['syncStatus'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}


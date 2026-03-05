// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceHostInstanceInfo {
  /// The time when the secondary instance completed the synchronization of data from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> dataSyncTime;
  /// The time when the secondary instance received logs from the primary instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> logSyncTime;
  /// The ID of the instance.
  final pulumi.Input<String> nodeId;
  /// The type of the node.
  final pulumi.Input<String> nodeType;
  /// The region ID of the instance.
  final pulumi.Input<String> regionId;
  /// The synchronization status.
  final pulumi.Input<String> syncStatus;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

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
      dataSyncTime: pulumi.Input.fromValue(map['dataSyncTime'] as String),
      logSyncTime: pulumi.Input.fromValue(map['logSyncTime'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      syncStatus: pulumi.Input.fromValue(map['syncStatus'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}


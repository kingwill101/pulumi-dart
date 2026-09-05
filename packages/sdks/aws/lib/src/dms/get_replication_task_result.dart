// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationTask.
class GetReplicationTaskResult {
  /// (Conflicts with `cdcStartTime`) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  final String? cdcStartPosition;
  /// (Conflicts with `cdcStartPosition`) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation.
  final String? cdcStartTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final String? migrationType;
  final String? region;
  /// ARN of the replication instance.
  final String? replicationInstanceArn;
  /// ARN for the replication task.
  final String? replicationTaskArn;
  final String? replicationTaskId;
  /// An escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).
  final String? replicationTaskSettings;
  /// ARN string that uniquely identifies the source endpoint.
  final String? sourceEndpointArn;
  /// Whether to run or stop the replication task.
  final bool? startReplicationTask;
  /// Replication Task status.
  final String? status;
  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final String? tableMappings;
  final Map<String, String>? tags;
  /// ARN string that uniquely identifies the target endpoint.
  final String? targetEndpointArn;

  /// Creates a new [GetReplicationTaskResult].
  /// [cdcStartPosition] (Conflicts with `cdcStartTime`) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  /// [cdcStartTime] (Conflicts with `cdcStartPosition`) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [migrationType] The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  /// [region] Optional.
  /// [replicationInstanceArn] ARN of the replication instance.
  /// [replicationTaskArn] ARN for the replication task.
  /// [replicationTaskId] Optional.
  /// [replicationTaskSettings] An escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).
  /// [sourceEndpointArn] ARN string that uniquely identifies the source endpoint.
  /// [startReplicationTask] Whether to run or stop the replication task.
  /// [status] Replication Task status.
  /// [tableMappings] An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  /// [tags] Optional.
  /// [targetEndpointArn] ARN string that uniquely identifies the target endpoint.
  const GetReplicationTaskResult({
    this.cdcStartPosition,
    this.cdcStartTime,
    this.id,
    this.migrationType,
    this.region,
    this.replicationInstanceArn,
    this.replicationTaskArn,
    this.replicationTaskId,
    this.replicationTaskSettings,
    this.sourceEndpointArn,
    this.startReplicationTask,
    this.status,
    this.tableMappings,
    this.tags,
    this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdcStartPosition': ?cdcStartPosition,
      'cdcStartTime': ?cdcStartTime,
      'id': ?id,
      'migrationType': ?migrationType,
      'region': ?region,
      'replicationInstanceArn': ?replicationInstanceArn,
      'replicationTaskArn': ?replicationTaskArn,
      'replicationTaskId': ?replicationTaskId,
      'replicationTaskSettings': ?replicationTaskSettings,
      'sourceEndpointArn': ?sourceEndpointArn,
      'startReplicationTask': ?startReplicationTask,
      'status': ?status,
      'tableMappings': ?tableMappings,
      'tags': ?tags,
      'targetEndpointArn': ?targetEndpointArn,
    };
  }

  factory GetReplicationTaskResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationTaskResult(
      cdcStartPosition: (() { final guardedValue = map['cdcStartPosition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cdcStartTime: (() { final guardedValue = map['cdcStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrationType: (() { final guardedValue = map['migrationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationInstanceArn: (() { final guardedValue = map['replicationInstanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationTaskArn: (() { final guardedValue = map['replicationTaskArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationTaskId: (() { final guardedValue = map['replicationTaskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationTaskSettings: (() { final guardedValue = map['replicationTaskSettings']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceEndpointArn: (() { final guardedValue = map['sourceEndpointArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startReplicationTask: (() { final guardedValue = map['startReplicationTask']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableMappings: (() { final guardedValue = map['tableMappings']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetEndpointArn: (() { final guardedValue = map['targetEndpointArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

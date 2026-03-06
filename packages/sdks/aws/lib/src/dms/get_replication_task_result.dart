// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationTask.
class GetReplicationTaskResult {
  /// (Conflicts with `cdc_start_time`) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  final String cdcStartPosition;
  /// (Conflicts with `cdc_start_position`) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation.
  final String cdcStartTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final String migrationType;
  final String region;
  /// The Amazon Resource Name (ARN) of the replication instance.
  final String replicationInstanceArn;
  /// The Amazon Resource Name (ARN) for the replication task.
  final String replicationTaskArn;
  final String replicationTaskId;
  /// An escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).
  final String replicationTaskSettings;
  /// The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  final String sourceEndpointArn;
  /// Whether to run or stop the replication task.
  final bool startReplicationTask;
  /// Replication Task status.
  final String status;
  /// An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final String tableMappings;
  final Map<String, String> tags;
  /// The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  final String targetEndpointArn;

  /// Creates a new [GetReplicationTaskResult].
  /// [cdcStartPosition] (Conflicts with `cdc_start_time`) Indicates when you want a change data capture (CDC) operation to start. The value can be in date, checkpoint, or LSN/SCN format depending on the source engine. For more information, see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  /// [cdcStartTime] (Conflicts with `cdc_start_position`) The Unix timestamp integer for the start of the Change Data Capture (CDC) operation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [migrationType] The migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  /// [region] Required.
  /// [replicationInstanceArn] The Amazon Resource Name (ARN) of the replication instance.
  /// [replicationTaskArn] The Amazon Resource Name (ARN) for the replication task.
  /// [replicationTaskId] Required.
  /// [replicationTaskSettings] An escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html).
  /// [sourceEndpointArn] The Amazon Resource Name (ARN) string that uniquely identifies the source endpoint.
  /// [startReplicationTask] Whether to run or stop the replication task.
  /// [status] Replication Task status.
  /// [tableMappings] An escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  /// [tags] Required.
  /// [targetEndpointArn] The Amazon Resource Name (ARN) string that uniquely identifies the target endpoint.
  const GetReplicationTaskResult({
    required this.cdcStartPosition,
    required this.cdcStartTime,
    required this.id,
    required this.migrationType,
    required this.region,
    required this.replicationInstanceArn,
    required this.replicationTaskArn,
    required this.replicationTaskId,
    required this.replicationTaskSettings,
    required this.sourceEndpointArn,
    required this.startReplicationTask,
    required this.status,
    required this.tableMappings,
    required this.tags,
    required this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdcStartPosition': cdcStartPosition,
      'cdcStartTime': cdcStartTime,
      'id': id,
      'migrationType': migrationType,
      'region': region,
      'replicationInstanceArn': replicationInstanceArn,
      'replicationTaskArn': replicationTaskArn,
      'replicationTaskId': replicationTaskId,
      'replicationTaskSettings': replicationTaskSettings,
      'sourceEndpointArn': sourceEndpointArn,
      'startReplicationTask': startReplicationTask,
      'status': status,
      'tableMappings': tableMappings,
      'tags': tags,
      'targetEndpointArn': targetEndpointArn,
    };
  }

  factory GetReplicationTaskResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationTaskResult(
      cdcStartPosition: map['cdcStartPosition'] as String,
      cdcStartTime: map['cdcStartTime'] as String,
      id: map['id'] as String,
      migrationType: map['migrationType'] as String,
      region: map['region'] as String,
      replicationInstanceArn: map['replicationInstanceArn'] as String,
      replicationTaskArn: map['replicationTaskArn'] as String,
      replicationTaskId: map['replicationTaskId'] as String,
      replicationTaskSettings: map['replicationTaskSettings'] as String,
      sourceEndpointArn: map['sourceEndpointArn'] as String,
      startReplicationTask: map['startReplicationTask'] as bool,
      status: map['status'] as String,
      tableMappings: map['tableMappings'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetEndpointArn: map['targetEndpointArn'] as String,
    );
  }
}


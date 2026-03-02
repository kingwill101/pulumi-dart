// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicationTask resources.
class ReplicationTaskState {
  /// Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  final pulumi.Input<String>? cdcStartPosition;
  /// RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  final pulumi.Input<String>? cdcStartTime;
  /// Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final pulumi.Input<String>? migrationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the replication instance.
  final pulumi.Input<String>? replicationInstanceArn;
  /// ARN for the replication task.
  final pulumi.Input<String>? replicationTaskArn;
  /// Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  final pulumi.Input<String>? replicationTaskId;
  /// Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as `null`, in the configuration since AWS provides a value for these settings.
  final pulumi.Input<String>? replicationTaskSettings;
  /// A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  final pulumi.Input<String>? resourceIdentifier;
  /// ARN that uniquely identifies the source endpoint.
  final pulumi.Input<String>? sourceEndpointArn;
  /// Whether to run or stop the replication task.
  final pulumi.Input<bool>? startReplicationTask;
  /// Replication Task status.
  final pulumi.Input<String>? status;
  /// Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final pulumi.Input<String>? tableMappings;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN that uniquely identifies the target endpoint.
  final pulumi.Input<String>? targetEndpointArn;

  /// Creates a new [ReplicationTaskState].
  /// [cdcStartPosition] Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  /// [cdcStartTime] RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  /// [migrationType] Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInstanceArn] ARN of the replication instance.
  /// [replicationTaskArn] ARN for the replication task.
  /// [replicationTaskId] Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  /// [replicationTaskSettings] Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as `null`, in the configuration since AWS provides a value for these settings.
  /// [resourceIdentifier] A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  /// [sourceEndpointArn] ARN that uniquely identifies the source endpoint.
  /// [startReplicationTask] Whether to run or stop the replication task.
  /// [status] Replication Task status.
  /// [tableMappings] Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetEndpointArn] ARN that uniquely identifies the target endpoint.
  ReplicationTaskState({
    this.cdcStartPosition,
    this.cdcStartTime,
    this.migrationType,
    this.region,
    this.replicationInstanceArn,
    this.replicationTaskArn,
    this.replicationTaskId,
    this.replicationTaskSettings,
    this.resourceIdentifier,
    this.sourceEndpointArn,
    this.startReplicationTask,
    this.status,
    this.tableMappings,
    this.tags,
    this.tagsAll,
    this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdcStartPosition': ?cdcStartPosition,
      'cdcStartTime': ?cdcStartTime,
      'migrationType': ?migrationType,
      'region': ?region,
      'replicationInstanceArn': ?replicationInstanceArn,
      'replicationTaskArn': ?replicationTaskArn,
      'replicationTaskId': ?replicationTaskId,
      'replicationTaskSettings': ?replicationTaskSettings,
      'resourceIdentifier': ?resourceIdentifier,
      'sourceEndpointArn': ?sourceEndpointArn,
      'startReplicationTask': ?startReplicationTask,
      'status': ?status,
      'tableMappings': ?tableMappings,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetEndpointArn': ?targetEndpointArn,
    };
  }

  factory ReplicationTaskState.fromMap(Map<String, dynamic> map) {
    return ReplicationTaskState(
      cdcStartPosition: map['cdcStartPosition'] == null ? null : ((map['cdcStartPosition'] as String).input()).input(),
      cdcStartTime: map['cdcStartTime'] == null ? null : ((map['cdcStartTime'] as String).input()).input(),
      migrationType: map['migrationType'] == null ? null : ((map['migrationType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicationInstanceArn: map['replicationInstanceArn'] == null ? null : ((map['replicationInstanceArn'] as String).input()).input(),
      replicationTaskArn: map['replicationTaskArn'] == null ? null : ((map['replicationTaskArn'] as String).input()).input(),
      replicationTaskId: map['replicationTaskId'] == null ? null : ((map['replicationTaskId'] as String).input()).input(),
      replicationTaskSettings: map['replicationTaskSettings'] == null ? null : ((map['replicationTaskSettings'] as String).input()).input(),
      resourceIdentifier: map['resourceIdentifier'] == null ? null : ((map['resourceIdentifier'] as String).input()).input(),
      sourceEndpointArn: map['sourceEndpointArn'] == null ? null : ((map['sourceEndpointArn'] as String).input()).input(),
      startReplicationTask: map['startReplicationTask'] == null ? null : ((map['startReplicationTask'] as bool).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tableMappings: map['tableMappings'] == null ? null : ((map['tableMappings'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetEndpointArn: map['targetEndpointArn'] == null ? null : ((map['targetEndpointArn'] as String).input()).input(),
    );
  }
}


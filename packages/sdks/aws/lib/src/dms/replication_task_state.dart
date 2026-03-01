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
    pulumi.Output<String>? cdcStartPosition,
    pulumi.Output<String>? cdcStartTime,
    pulumi.Output<String>? migrationType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationInstanceArn,
    pulumi.Output<String>? replicationTaskArn,
    pulumi.Output<String>? replicationTaskId,
    pulumi.Output<String>? replicationTaskSettings,
    pulumi.Output<String>? resourceIdentifier,
    pulumi.Output<String>? sourceEndpointArn,
    pulumi.Output<bool>? startReplicationTask,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tableMappings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetEndpointArn,
  }) :
      cdcStartPosition = pulumi.Input.asOptionalInput<String>(cdcStartPosition),
      cdcStartTime = pulumi.Input.asOptionalInput<String>(cdcStartTime),
      migrationType = pulumi.Input.asOptionalInput<String>(migrationType),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationInstanceArn = pulumi.Input.asOptionalInput<String>(replicationInstanceArn),
      replicationTaskArn = pulumi.Input.asOptionalInput<String>(replicationTaskArn),
      replicationTaskId = pulumi.Input.asOptionalInput<String>(replicationTaskId),
      replicationTaskSettings = pulumi.Input.asOptionalInput<String>(replicationTaskSettings),
      resourceIdentifier = pulumi.Input.asOptionalInput<String>(resourceIdentifier),
      sourceEndpointArn = pulumi.Input.asOptionalInput<String>(sourceEndpointArn),
      startReplicationTask = pulumi.Input.asOptionalInput<bool>(startReplicationTask),
      status = pulumi.Input.asOptionalInput<String>(status),
      tableMappings = pulumi.Input.asOptionalInput<String>(tableMappings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetEndpointArn = pulumi.Input.asOptionalInput<String>(targetEndpointArn);

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
      cdcStartPosition: map['cdcStartPosition'] == null ? null : pulumi.Output.create<String>(map['cdcStartPosition'] as String),
      cdcStartTime: map['cdcStartTime'] == null ? null : pulumi.Output.create<String>(map['cdcStartTime'] as String),
      migrationType: map['migrationType'] == null ? null : pulumi.Output.create<String>(map['migrationType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationInstanceArn: map['replicationInstanceArn'] == null ? null : pulumi.Output.create<String>(map['replicationInstanceArn'] as String),
      replicationTaskArn: map['replicationTaskArn'] == null ? null : pulumi.Output.create<String>(map['replicationTaskArn'] as String),
      replicationTaskId: map['replicationTaskId'] == null ? null : pulumi.Output.create<String>(map['replicationTaskId'] as String),
      replicationTaskSettings: map['replicationTaskSettings'] == null ? null : pulumi.Output.create<String>(map['replicationTaskSettings'] as String),
      resourceIdentifier: map['resourceIdentifier'] == null ? null : pulumi.Output.create<String>(map['resourceIdentifier'] as String),
      sourceEndpointArn: map['sourceEndpointArn'] == null ? null : pulumi.Output.create<String>(map['sourceEndpointArn'] as String),
      startReplicationTask: map['startReplicationTask'] == null ? null : pulumi.Output.create<bool>(map['startReplicationTask'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tableMappings: map['tableMappings'] == null ? null : pulumi.Output.create<String>(map['tableMappings'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetEndpointArn: map['targetEndpointArn'] == null ? null : pulumi.Output.create<String>(map['targetEndpointArn'] as String),
    );
  }
}


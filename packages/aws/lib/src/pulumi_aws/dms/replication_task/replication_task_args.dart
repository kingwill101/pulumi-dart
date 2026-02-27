// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReplicationTask.
class ReplicationTaskArgs {
  /// Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  final pulumi.Input<String>? cdcStartPosition;

  /// RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  final pulumi.Input<String>? cdcStartTime;

  /// Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final pulumi.Input<String> migrationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the replication instance.
  final pulumi.Input<String> replicationInstanceArn;

  /// Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  final pulumi.Input<String> replicationTaskId;

  /// Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as `null`, in the configuration since AWS provides a value for these settings.
  final pulumi.Input<String>? replicationTaskSettings;

  /// A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  final pulumi.Input<String>? resourceIdentifier;

  /// ARN that uniquely identifies the source endpoint.
  final pulumi.Input<String> sourceEndpointArn;

  /// Whether to run or stop the replication task.
  final pulumi.Input<bool>? startReplicationTask;

  /// Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final pulumi.Input<String> tableMappings;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN that uniquely identifies the target endpoint.
  final pulumi.Input<String> targetEndpointArn;

  ReplicationTaskArgs({
    this.cdcStartPosition,
    this.cdcStartTime,
    required this.migrationType,
    this.region,
    required this.replicationInstanceArn,
    required this.replicationTaskId,
    this.replicationTaskSettings,
    this.resourceIdentifier,
    required this.sourceEndpointArn,
    this.startReplicationTask,
    required this.tableMappings,
    this.tags,
    required this.targetEndpointArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cdcStartPositionValue = cdcStartPosition;
    if (cdcStartPositionValue != null) {
      map['cdcStartPosition'] = cdcStartPositionValue;
    }
    final cdcStartTimeValue = cdcStartTime;
    if (cdcStartTimeValue != null) {
      map['cdcStartTime'] = cdcStartTimeValue;
    }
    map['migrationType'] = migrationType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationInstanceArn'] = replicationInstanceArn;
    map['replicationTaskId'] = replicationTaskId;
    final replicationTaskSettingsValue = replicationTaskSettings;
    if (replicationTaskSettingsValue != null) {
      map['replicationTaskSettings'] = replicationTaskSettingsValue;
    }
    final resourceIdentifierValue = resourceIdentifier;
    if (resourceIdentifierValue != null) {
      map['resourceIdentifier'] = resourceIdentifierValue;
    }
    map['sourceEndpointArn'] = sourceEndpointArn;
    final startReplicationTaskValue = startReplicationTask;
    if (startReplicationTaskValue != null) {
      map['startReplicationTask'] = startReplicationTaskValue;
    }
    map['tableMappings'] = tableMappings;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetEndpointArn'] = targetEndpointArn;
    return map;
  }

  factory ReplicationTaskArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationTaskArgs(
      cdcStartPosition:
          pulumi.Input.asOptionalInput<String>(map['cdcStartPosition']),
      cdcStartTime: pulumi.Input.asOptionalInput<String>(map['cdcStartTime']),
      migrationType: pulumi.Input.asInput<String>(map['migrationType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationInstanceArn:
          pulumi.Input.asInput<String>(map['replicationInstanceArn']),
      replicationTaskId: pulumi.Input.asInput<String>(map['replicationTaskId']),
      replicationTaskSettings:
          pulumi.Input.asOptionalInput<String>(map['replicationTaskSettings']),
      resourceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['resourceIdentifier']),
      sourceEndpointArn: pulumi.Input.asInput<String>(map['sourceEndpointArn']),
      startReplicationTask:
          pulumi.Input.asOptionalInput<bool>(map['startReplicationTask']),
      tableMappings: pulumi.Input.asInput<String>(map['tableMappings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetEndpointArn: pulumi.Input.asInput<String>(map['targetEndpointArn']),
    );
  }
}

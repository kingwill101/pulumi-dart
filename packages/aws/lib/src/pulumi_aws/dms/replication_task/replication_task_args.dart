// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ReplicationTask.
class ReplicationTaskArgs {
  /// Indicates when you want a change data capture (CDC) operation to start. The value can be a RFC3339 formatted date, a checkpoint, or a LSN/SCN format depending on the source engine. For more information see [Determining a CDC native start point](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native).
  final Input<String>? cdcStartPosition;

  /// RFC3339 formatted date string or UNIX timestamp for the start of the Change Data Capture (CDC) operation.
  final Input<String>? cdcStartTime;

  /// Migration type. Can be one of `full-load | cdc | full-load-and-cdc`.
  final Input<String> migrationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the replication instance.
  final Input<String> replicationInstanceArn;

  /// Replication task identifier which must contain from 1 to 255 alphanumeric characters or hyphens, first character must be a letter, cannot end with a hyphen, and cannot contain two consecutive hyphens.
  final Input<String> replicationTaskId;

  /// Escaped JSON string that contains the task settings. For a complete list of task settings, see [Task Settings for AWS Database Migration Service Tasks](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html). Note that `Logging.CloudWatchLogGroup` and `Logging.CloudWatchLogStream` are read only and should not be defined, even as `null`, in the configuration since AWS provides a value for these settings.
  final Input<String>? replicationTaskSettings;

  /// A friendly name for the resource identifier at the end of the EndpointArn response parameter that is returned in the created Endpoint object.
  final Input<String>? resourceIdentifier;

  /// ARN that uniquely identifies the source endpoint.
  final Input<String> sourceEndpointArn;

  /// Whether to run or stop the replication task.
  final Input<bool>? startReplicationTask;

  /// Escaped JSON string that contains the table mappings. For information on table mapping see [Using Table Mapping with an AWS Database Migration Service Task to Select and Filter Data](http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
  final Input<String> tableMappings;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ARN that uniquely identifies the target endpoint.
  final Input<String> targetEndpointArn;

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
      cdcStartPosition: Input.asOptionalInput<String>(map['cdcStartPosition']),
      cdcStartTime: Input.asOptionalInput<String>(map['cdcStartTime']),
      migrationType: Input.asInput<String>(map['migrationType']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationInstanceArn:
          Input.asInput<String>(map['replicationInstanceArn']),
      replicationTaskId: Input.asInput<String>(map['replicationTaskId']),
      replicationTaskSettings:
          Input.asOptionalInput<String>(map['replicationTaskSettings']),
      resourceIdentifier:
          Input.asOptionalInput<String>(map['resourceIdentifier']),
      sourceEndpointArn: Input.asInput<String>(map['sourceEndpointArn']),
      startReplicationTask:
          Input.asOptionalInput<bool>(map['startReplicationTask']),
      tableMappings: Input.asInput<String>(map['tableMappings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetEndpointArn: Input.asInput<String>(map['targetEndpointArn']),
    );
  }
}

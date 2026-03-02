// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledSqlScheduledSqlConfiguration {
  /// Write mode.
  final pulumi.Input<String>? dataFormat;
  /// The destination endpoint.
  final pulumi.Input<String>? destEndpoint;
  /// The destination Logstore.
  final pulumi.Input<String>? destLogstore;
  /// The destination project.
  final pulumi.Input<String>? destProject;
  /// Destination write role ARN.
  final pulumi.Input<String>? destRoleArn;
  /// The start time of the schedule.
  final pulumi.Input<int>? fromTime;
  /// SQL time window - start.
  final pulumi.Input<String>? fromTimeExpr;
  /// Maximum number of retries.
  final pulumi.Input<int>? maxRetries;
  /// SQL timeout.
  final pulumi.Input<int>? maxRunTimeInSeconds;
  /// Parameter configuration.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Resource pool.
  final pulumi.Input<String>? resourcePool;
  /// Source read role ARN.
  final pulumi.Input<String>? roleArn;
  /// SQL statement.
  final pulumi.Input<String>? script;
  /// The source Logstore.
  final pulumi.Input<String>? sourceLogstore;
  /// SQL type.
  final pulumi.Input<String>? sqlType;
  /// Scheduled end time.
  final pulumi.Input<int>? toTime;
  /// End of the SQL time window.
  final pulumi.Input<String>? toTimeExpr;

  /// Creates a new [ScheduledSqlScheduledSqlConfiguration].
  /// [dataFormat] Write mode.
  /// [destEndpoint] The destination endpoint.
  /// [destLogstore] The destination Logstore.
  /// [destProject] The destination project.
  /// [destRoleArn] Destination write role ARN.
  /// [fromTime] The start time of the schedule.
  /// [fromTimeExpr] SQL time window - start.
  /// [maxRetries] Maximum number of retries.
  /// [maxRunTimeInSeconds] SQL timeout.
  /// [parameters] Parameter configuration.
  /// [resourcePool] Resource pool.
  /// [roleArn] Source read role ARN.
  /// [script] SQL statement.
  /// [sourceLogstore] The source Logstore.
  /// [sqlType] SQL type.
  /// [toTime] Scheduled end time.
  /// [toTimeExpr] End of the SQL time window.
  ScheduledSqlScheduledSqlConfiguration({
    this.dataFormat,
    this.destEndpoint,
    this.destLogstore,
    this.destProject,
    this.destRoleArn,
    this.fromTime,
    this.fromTimeExpr,
    this.maxRetries,
    this.maxRunTimeInSeconds,
    this.parameters,
    this.resourcePool,
    this.roleArn,
    this.script,
    this.sourceLogstore,
    this.sqlType,
    this.toTime,
    this.toTimeExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFormat': ?dataFormat,
      'destEndpoint': ?destEndpoint,
      'destLogstore': ?destLogstore,
      'destProject': ?destProject,
      'destRoleArn': ?destRoleArn,
      'fromTime': ?fromTime,
      'fromTimeExpr': ?fromTimeExpr,
      'maxRetries': ?maxRetries,
      'maxRunTimeInSeconds': ?maxRunTimeInSeconds,
      'parameters': ?parameters,
      'resourcePool': ?resourcePool,
      'roleArn': ?roleArn,
      'script': ?script,
      'sourceLogstore': ?sourceLogstore,
      'sqlType': ?sqlType,
      'toTime': ?toTime,
      'toTimeExpr': ?toTimeExpr,
    };
  }

  factory ScheduledSqlScheduledSqlConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledSqlScheduledSqlConfiguration(
      dataFormat: map['dataFormat'] == null ? null : (map['dataFormat']! as String).input(),
      destEndpoint: map['destEndpoint'] == null ? null : (map['destEndpoint']! as String).input(),
      destLogstore: map['destLogstore'] == null ? null : (map['destLogstore']! as String).input(),
      destProject: map['destProject'] == null ? null : (map['destProject']! as String).input(),
      destRoleArn: map['destRoleArn'] == null ? null : (map['destRoleArn']! as String).input(),
      fromTime: map['fromTime'] == null ? null : (map['fromTime']! as int).input(),
      fromTimeExpr: map['fromTimeExpr'] == null ? null : (map['fromTimeExpr']! as String).input(),
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries']! as int).input(),
      maxRunTimeInSeconds: map['maxRunTimeInSeconds'] == null ? null : (map['maxRunTimeInSeconds']! as int).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      resourcePool: map['resourcePool'] == null ? null : (map['resourcePool']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
      sourceLogstore: map['sourceLogstore'] == null ? null : (map['sourceLogstore']! as String).input(),
      sqlType: map['sqlType'] == null ? null : (map['sqlType']! as String).input(),
      toTime: map['toTime'] == null ? null : (map['toTime']! as int).input(),
      toTimeExpr: map['toTimeExpr'] == null ? null : (map['toTimeExpr']! as String).input(),
    );
  }
}


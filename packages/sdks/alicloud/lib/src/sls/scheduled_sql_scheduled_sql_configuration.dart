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
  const ScheduledSqlScheduledSqlConfiguration({
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
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destEndpoint: (() { final guardedValue = map['destEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destLogstore: (() { final guardedValue = map['destLogstore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destProject: (() { final guardedValue = map['destProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destRoleArn: (() { final guardedValue = map['destRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromTime: (() { final guardedValue = map['fromTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fromTimeExpr: (() { final guardedValue = map['fromTimeExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRunTimeInSeconds: (() { final guardedValue = map['maxRunTimeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourcePool: (() { final guardedValue = map['resourcePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceLogstore: (() { final guardedValue = map['sourceLogstore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlType: (() { final guardedValue = map['sqlType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toTime: (() { final guardedValue = map['toTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      toTimeExpr: (() { final guardedValue = map['toTimeExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


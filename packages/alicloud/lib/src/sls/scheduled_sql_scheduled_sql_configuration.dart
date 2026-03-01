// ignore_for_file: unused_element, unnecessary_cast


class ScheduledSqlScheduledSqlConfiguration {
  /// Write mode.
  final String? dataFormat;
  /// The destination endpoint.
  final String? destEndpoint;
  /// The destination Logstore.
  final String? destLogstore;
  /// The destination project.
  final String? destProject;
  /// Destination write role ARN.
  final String? destRoleArn;
  /// The start time of the schedule.
  final int? fromTime;
  /// SQL time window - start.
  final String? fromTimeExpr;
  /// Maximum number of retries.
  final int? maxRetries;
  /// SQL timeout.
  final int? maxRunTimeInSeconds;
  /// Parameter configuration.
  final Map<String, String>? parameters;
  /// Resource pool.
  final String? resourcePool;
  /// Source read role ARN.
  final String? roleArn;
  /// SQL statement.
  final String? script;
  /// The source Logstore.
  final String? sourceLogstore;
  /// SQL type.
  final String? sqlType;
  /// Scheduled end time.
  final int? toTime;
  /// End of the SQL time window.
  final String? toTimeExpr;

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
      dataFormat: map['dataFormat'] == null ? null : map['dataFormat'] as String,
      destEndpoint: map['destEndpoint'] == null ? null : map['destEndpoint'] as String,
      destLogstore: map['destLogstore'] == null ? null : map['destLogstore'] as String,
      destProject: map['destProject'] == null ? null : map['destProject'] as String,
      destRoleArn: map['destRoleArn'] == null ? null : map['destRoleArn'] as String,
      fromTime: map['fromTime'] == null ? null : map['fromTime'] as int,
      fromTimeExpr: map['fromTimeExpr'] == null ? null : map['fromTimeExpr'] as String,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      maxRunTimeInSeconds: map['maxRunTimeInSeconds'] == null ? null : map['maxRunTimeInSeconds'] as int,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      resourcePool: map['resourcePool'] == null ? null : map['resourcePool'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      sourceLogstore: map['sourceLogstore'] == null ? null : map['sourceLogstore'] as String,
      sqlType: map['sqlType'] == null ? null : map['sqlType'] as String,
      toTime: map['toTime'] == null ? null : map['toTime'] as int,
      toTimeExpr: map['toTimeExpr'] == null ? null : map['toTimeExpr'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_streaming_job_streaming_job_args_doc}
/// The set of arguments for StreamingJob.
/// {@endtemplate}
/// {@macro pulumi_gpdb_streaming_job_streaming_job_args_doc}
class StreamingJobArgs {
  /// The name of the database account.
  final pulumi.Input<String>? account;
  /// The delivery guarantee setting.
  ///
  /// Valid values:
  ///
  /// - ATLEAST
  /// - EXACTLY
  final pulumi.Input<String>? consistency;
  /// The data source ID.
  final pulumi.Input<String> dataSourceId;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// Target Field
  final pulumi.Input<List<String>>? destColumns;
  /// The name of the destination database.
  final pulumi.Input<String>? destDatabase;
  /// Target Schema
  final pulumi.Input<String>? destSchema;
  /// The name of the destination table.
  final pulumi.Input<String>? destTable;
  /// The number of allowed error rows. Write failures occur when Kafka data does not match the destination table in AnalyticDB for PostgreSQL. If the specified value is exceeded, the job fails.
  final pulumi.Input<int>? errorLimitCount;
  /// Automatic offset reset
  final pulumi.Input<String>? fallbackOffset;
  /// Group Name
  final pulumi.Input<String>? groupName;
  /// The YAML configuration file of the job. This parameter must be specified when Mode is set to professional.
  final pulumi.Input<String>? jobConfig;
  /// The description of the job.
  final pulumi.Input<String>? jobDescription;
  /// The name of the job.
  final pulumi.Input<String> jobName;
  /// Match Field
  final pulumi.Input<List<String>>? matchColumns;
  /// The configuration mode. Valid values:
  ///
  /// 1.  basic: In basic mode, you must configure the configuration parameters.
  ///
  /// 2.  professional: In professional mode, you can submit a YAML configuration file.
  final pulumi.Input<String>? mode;
  /// The password of the database account.
  final pulumi.Input<String>? password;
  /// Source Field
  final pulumi.Input<List<String>>? srcColumns;
  /// Specifies whether to test the real-time job. Valid values:
  ///
  /// - true
  /// - false
  ///
  /// Default value: false.
  final pulumi.Input<bool>? tryRun;
  /// Update Field
  final pulumi.Input<List<String>>? updateColumns;
  /// The write mode.
  ///
  /// Valid values:
  ///
  /// - insert
  /// - update
  /// - merge
  final pulumi.Input<String>? writeMode;

  /// Creates a new [StreamingJobArgs].
  /// [account] The name of the database account.
  /// [consistency] The delivery guarantee setting.
  /// [dataSourceId] The data source ID.
  /// [dbInstanceId] The instance ID.
  /// [destColumns] Target Field
  /// [destDatabase] The name of the destination database.
  /// [destSchema] Target Schema
  /// [destTable] The name of the destination table.
  /// [errorLimitCount] The number of allowed error rows. Write failures occur when Kafka data does not match the destination table in AnalyticDB for PostgreSQL. If the specified value is exceeded, the job fails.
  /// [fallbackOffset] Automatic offset reset
  /// [groupName] Group Name
  /// [jobConfig] The YAML configuration file of the job. This parameter must be specified when Mode is set to professional.
  /// [jobDescription] The description of the job.
  /// [jobName] The name of the job.
  /// [matchColumns] Match Field
  /// [mode] The configuration mode. Valid values:
  /// [password] The password of the database account.
  /// [srcColumns] Source Field
  /// [tryRun] Specifies whether to test the real-time job. Valid values:
  /// [updateColumns] Update Field
  /// [writeMode] The write mode.
  StreamingJobArgs({
    this.account,
    this.consistency,
    required this.dataSourceId,
    required this.dbInstanceId,
    this.destColumns,
    this.destDatabase,
    this.destSchema,
    this.destTable,
    this.errorLimitCount,
    this.fallbackOffset,
    this.groupName,
    this.jobConfig,
    this.jobDescription,
    required this.jobName,
    this.matchColumns,
    this.mode,
    this.password,
    this.srcColumns,
    this.tryRun,
    this.updateColumns,
    this.writeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'consistency': ?consistency,
      'dataSourceId': dataSourceId,
      'dbInstanceId': dbInstanceId,
      'destColumns': ?destColumns,
      'destDatabase': ?destDatabase,
      'destSchema': ?destSchema,
      'destTable': ?destTable,
      'errorLimitCount': ?errorLimitCount,
      'fallbackOffset': ?fallbackOffset,
      'groupName': ?groupName,
      'jobConfig': ?jobConfig,
      'jobDescription': ?jobDescription,
      'jobName': jobName,
      'matchColumns': ?matchColumns,
      'mode': ?mode,
      'password': ?password,
      'srcColumns': ?srcColumns,
      'tryRun': ?tryRun,
      'updateColumns': ?updateColumns,
      'writeMode': ?writeMode,
    };
  }

  factory StreamingJobArgs.fromMap(Map<String, dynamic> map) {
    return StreamingJobArgs(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consistency: (() { final guardedValue = map['consistency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      destColumns: (() { final guardedValue = map['destColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destDatabase: (() { final guardedValue = map['destDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destSchema: (() { final guardedValue = map['destSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destTable: (() { final guardedValue = map['destTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorLimitCount: (() { final guardedValue = map['errorLimitCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fallbackOffset: (() { final guardedValue = map['fallbackOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobConfig: (() { final guardedValue = map['jobConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobDescription: (() { final guardedValue = map['jobDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      matchColumns: (() { final guardedValue = map['matchColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      srcColumns: (() { final guardedValue = map['srcColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tryRun: (() { final guardedValue = map['tryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateColumns: (() { final guardedValue = map['updateColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      writeMode: (() { final guardedValue = map['writeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


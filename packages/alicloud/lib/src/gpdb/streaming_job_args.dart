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
    String? account,
    String? consistency,
    required String dataSourceId,
    required String dbInstanceId,
    List<String>? destColumns,
    String? destDatabase,
    String? destSchema,
    String? destTable,
    int? errorLimitCount,
    String? fallbackOffset,
    String? groupName,
    String? jobConfig,
    String? jobDescription,
    required String jobName,
    List<String>? matchColumns,
    String? mode,
    String? password,
    List<String>? srcColumns,
    bool? tryRun,
    List<String>? updateColumns,
    String? writeMode,
  }) :
      account = pulumi.Input.asOptionalInput<String>(account),
      consistency = pulumi.Input.asOptionalInput<String>(consistency),
      dataSourceId = pulumi.Input.asInput<String>(dataSourceId),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      destColumns = pulumi.Input.asOptionalInput<List<String>>(destColumns),
      destDatabase = pulumi.Input.asOptionalInput<String>(destDatabase),
      destSchema = pulumi.Input.asOptionalInput<String>(destSchema),
      destTable = pulumi.Input.asOptionalInput<String>(destTable),
      errorLimitCount = pulumi.Input.asOptionalInput<int>(errorLimitCount),
      fallbackOffset = pulumi.Input.asOptionalInput<String>(fallbackOffset),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      jobConfig = pulumi.Input.asOptionalInput<String>(jobConfig),
      jobDescription = pulumi.Input.asOptionalInput<String>(jobDescription),
      jobName = pulumi.Input.asInput<String>(jobName),
      matchColumns = pulumi.Input.asOptionalInput<List<String>>(matchColumns),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      password = pulumi.Input.asOptionalInput<String>(password),
      srcColumns = pulumi.Input.asOptionalInput<List<String>>(srcColumns),
      tryRun = pulumi.Input.asOptionalInput<bool>(tryRun),
      updateColumns = pulumi.Input.asOptionalInput<List<String>>(updateColumns),
      writeMode = pulumi.Input.asOptionalInput<String>(writeMode);

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
      account: map['account'] == null ? null : map['account'] as String,
      consistency: map['consistency'] == null ? null : map['consistency'] as String,
      dataSourceId: map['dataSourceId'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      destColumns: map['destColumns'] == null ? null : (map['destColumns'] as List).cast<String>(),
      destDatabase: map['destDatabase'] == null ? null : map['destDatabase'] as String,
      destSchema: map['destSchema'] == null ? null : map['destSchema'] as String,
      destTable: map['destTable'] == null ? null : map['destTable'] as String,
      errorLimitCount: map['errorLimitCount'] == null ? null : map['errorLimitCount'] as int,
      fallbackOffset: map['fallbackOffset'] == null ? null : map['fallbackOffset'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      jobConfig: map['jobConfig'] == null ? null : map['jobConfig'] as String,
      jobDescription: map['jobDescription'] == null ? null : map['jobDescription'] as String,
      jobName: map['jobName'] as String,
      matchColumns: map['matchColumns'] == null ? null : (map['matchColumns'] as List).cast<String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      srcColumns: map['srcColumns'] == null ? null : (map['srcColumns'] as List).cast<String>(),
      tryRun: map['tryRun'] == null ? null : map['tryRun'] as bool,
      updateColumns: map['updateColumns'] == null ? null : (map['updateColumns'] as List).cast<String>(),
      writeMode: map['writeMode'] == null ? null : map['writeMode'] as String,
    );
  }
}


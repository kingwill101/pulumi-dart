// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamingJob resources.
class StreamingJobState {
  /// The name of the database account.
  final pulumi.Input<String>? account;
  /// The delivery guarantee setting.
  ///
  /// Valid values:
  ///
  /// - ATLEAST
  /// - EXACTLY
  final pulumi.Input<String>? consistency;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The data source ID.
  final pulumi.Input<String>? dataSourceId;
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
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
  /// The job ID.
  final pulumi.Input<String>? jobId;
  /// The name of the job.
  final pulumi.Input<String>? jobName;
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
  /// Service status, value:
  final pulumi.Input<String>? status;
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

  /// Creates a new [StreamingJobState].
  /// [account] The name of the database account.
  /// [consistency] The delivery guarantee setting.
  /// [createTime] The creation time of the resource
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
  /// [jobId] The job ID.
  /// [jobName] The name of the job.
  /// [matchColumns] Match Field
  /// [mode] The configuration mode. Valid values:
  /// [password] The password of the database account.
  /// [srcColumns] Source Field
  /// [status] Service status, value:
  /// [tryRun] Specifies whether to test the real-time job. Valid values:
  /// [updateColumns] Update Field
  /// [writeMode] The write mode.
  StreamingJobState({
    pulumi.Output<String>? account,
    pulumi.Output<String>? consistency,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<List<String>>? destColumns,
    pulumi.Output<String>? destDatabase,
    pulumi.Output<String>? destSchema,
    pulumi.Output<String>? destTable,
    pulumi.Output<int>? errorLimitCount,
    pulumi.Output<String>? fallbackOffset,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? jobConfig,
    pulumi.Output<String>? jobDescription,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? jobName,
    pulumi.Output<List<String>>? matchColumns,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? password,
    pulumi.Output<List<String>>? srcColumns,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? tryRun,
    pulumi.Output<List<String>>? updateColumns,
    pulumi.Output<String>? writeMode,
  }) :
      account = pulumi.Input.asOptionalInput<String>(account),
      consistency = pulumi.Input.asOptionalInput<String>(consistency),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      destColumns = pulumi.Input.asOptionalInput<List<String>>(destColumns),
      destDatabase = pulumi.Input.asOptionalInput<String>(destDatabase),
      destSchema = pulumi.Input.asOptionalInput<String>(destSchema),
      destTable = pulumi.Input.asOptionalInput<String>(destTable),
      errorLimitCount = pulumi.Input.asOptionalInput<int>(errorLimitCount),
      fallbackOffset = pulumi.Input.asOptionalInput<String>(fallbackOffset),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      jobConfig = pulumi.Input.asOptionalInput<String>(jobConfig),
      jobDescription = pulumi.Input.asOptionalInput<String>(jobDescription),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      jobName = pulumi.Input.asOptionalInput<String>(jobName),
      matchColumns = pulumi.Input.asOptionalInput<List<String>>(matchColumns),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      password = pulumi.Input.asOptionalInput<String>(password),
      srcColumns = pulumi.Input.asOptionalInput<List<String>>(srcColumns),
      status = pulumi.Input.asOptionalInput<String>(status),
      tryRun = pulumi.Input.asOptionalInput<bool>(tryRun),
      updateColumns = pulumi.Input.asOptionalInput<List<String>>(updateColumns),
      writeMode = pulumi.Input.asOptionalInput<String>(writeMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'consistency': ?consistency,
      'createTime': ?createTime,
      'dataSourceId': ?dataSourceId,
      'dbInstanceId': ?dbInstanceId,
      'destColumns': ?destColumns,
      'destDatabase': ?destDatabase,
      'destSchema': ?destSchema,
      'destTable': ?destTable,
      'errorLimitCount': ?errorLimitCount,
      'fallbackOffset': ?fallbackOffset,
      'groupName': ?groupName,
      'jobConfig': ?jobConfig,
      'jobDescription': ?jobDescription,
      'jobId': ?jobId,
      'jobName': ?jobName,
      'matchColumns': ?matchColumns,
      'mode': ?mode,
      'password': ?password,
      'srcColumns': ?srcColumns,
      'status': ?status,
      'tryRun': ?tryRun,
      'updateColumns': ?updateColumns,
      'writeMode': ?writeMode,
    };
  }

  factory StreamingJobState.fromMap(Map<String, dynamic> map) {
    return StreamingJobState(
      account: map['account'] == null ? null : pulumi.Output.create<String>(map['account'] as String),
      consistency: map['consistency'] == null ? null : pulumi.Output.create<String>(map['consistency'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      destColumns: map['destColumns'] == null ? null : pulumi.Output.create<List<String>>((map['destColumns'] as List).cast<String>()),
      destDatabase: map['destDatabase'] == null ? null : pulumi.Output.create<String>(map['destDatabase'] as String),
      destSchema: map['destSchema'] == null ? null : pulumi.Output.create<String>(map['destSchema'] as String),
      destTable: map['destTable'] == null ? null : pulumi.Output.create<String>(map['destTable'] as String),
      errorLimitCount: map['errorLimitCount'] == null ? null : pulumi.Output.create<int>(map['errorLimitCount'] as int),
      fallbackOffset: map['fallbackOffset'] == null ? null : pulumi.Output.create<String>(map['fallbackOffset'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      jobConfig: map['jobConfig'] == null ? null : pulumi.Output.create<String>(map['jobConfig'] as String),
      jobDescription: map['jobDescription'] == null ? null : pulumi.Output.create<String>(map['jobDescription'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      jobName: map['jobName'] == null ? null : pulumi.Output.create<String>(map['jobName'] as String),
      matchColumns: map['matchColumns'] == null ? null : pulumi.Output.create<List<String>>((map['matchColumns'] as List).cast<String>()),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      srcColumns: map['srcColumns'] == null ? null : pulumi.Output.create<List<String>>((map['srcColumns'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tryRun: map['tryRun'] == null ? null : pulumi.Output.create<bool>(map['tryRun'] as bool),
      updateColumns: map['updateColumns'] == null ? null : pulumi.Output.create<List<String>>((map['updateColumns'] as List).cast<String>()),
      writeMode: map['writeMode'] == null ? null : pulumi.Output.create<String>(map['writeMode'] as String),
    );
  }
}


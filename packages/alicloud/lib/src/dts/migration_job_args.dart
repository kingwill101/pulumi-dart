// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_migration_job_migration_job_args_doc}
/// The set of arguments for MigrationJob.
/// {@endtemplate}
/// {@macro pulumi_dts_migration_job_migration_job_args_doc}
class MigrationJobArgs {
  /// Start time in Unix timestamp format.
  final pulumi.Input<String>? checkpoint;
  /// Whether to execute DTS supports schema migration.
  final pulumi.Input<bool> dataInitialization;
  /// Whether to perform incremental data migration.
  final pulumi.Input<bool> dataSynchronization;
  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, migration or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  final pulumi.Input<String> dbList;
  /// The name of migrate the database.
  final pulumi.Input<String>? destinationEndpointDatabaseName;
  /// The type of destination database. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  final pulumi.Input<String> destinationEndpointEngineName;
  /// The ID of destination instance.
  final pulumi.Input<String>? destinationEndpointInstanceId;
  /// The type of destination instance. Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String> destinationEndpointInstanceType;
  /// The ip of source endpoint.
  final pulumi.Input<String>? destinationEndpointIp;
  /// The SID of Oracle database.
  final pulumi.Input<String>? destinationEndpointOracleSid;
  /// The password of database account.
  final pulumi.Input<String>? destinationEndpointPassword;
  /// The port of source endpoint.
  final pulumi.Input<String>? destinationEndpointPort;
  /// The region of destination instance.
  final pulumi.Input<String>? destinationEndpointRegion;
  /// The username of database account.
  final pulumi.Input<String>? destinationEndpointUserName;
  /// The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  final pulumi.Input<String> dtsInstanceId;
  /// The name of migration job.
  final pulumi.Input<String>? dtsJobName;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  final pulumi.Input<String>? instanceClass;
  /// The name of migrate the database.
  final pulumi.Input<String>? sourceEndpointDatabaseName;
  /// The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  final pulumi.Input<String> sourceEndpointEngineName;
  /// The ID of source instance.
  final pulumi.Input<String>? sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String> sourceEndpointInstanceType;
  /// The ip of source endpoint.
  final pulumi.Input<String>? sourceEndpointIp;
  /// The SID of Oracle database.
  final pulumi.Input<String>? sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs.
  final pulumi.Input<String>? sourceEndpointOwnerId;
  /// The password of database account.
  final pulumi.Input<String>? sourceEndpointPassword;
  /// The port of source endpoint.
  final pulumi.Input<String>? sourceEndpointPort;
  /// The region of source instance.
  final pulumi.Input<String>? sourceEndpointRegion;
  /// The name of the role configured for the cloud account to which the source instance belongs.
  final pulumi.Input<String>? sourceEndpointRole;
  /// The username of database account.
  final pulumi.Input<String>? sourceEndpointUserName;
  /// The status of the resource. Valid values: `Migrating`, `Suspending`. You can suspend the task by specifying `Suspending` and start the task by specifying `Migrating`.
  final pulumi.Input<String>? status;
  /// Whether to perform a database table structure to migrate.
  final pulumi.Input<bool> structureInitialization;

  /// Creates a new [MigrationJobArgs].
  /// [checkpoint] Start time in Unix timestamp format.
  /// [dataInitialization] Whether to execute DTS supports schema migration.
  /// [dataSynchronization] Whether to perform incremental data migration.
  /// [dbList] Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, migration or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  /// [destinationEndpointDatabaseName] The name of migrate the database.
  /// [destinationEndpointEngineName] The type of destination database. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  /// [destinationEndpointInstanceId] The ID of destination instance.
  /// [destinationEndpointInstanceType] The type of destination instance. Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [destinationEndpointIp] The ip of source endpoint.
  /// [destinationEndpointOracleSid] The SID of Oracle database.
  /// [destinationEndpointPassword] The password of database account.
  /// [destinationEndpointPort] The port of source endpoint.
  /// [destinationEndpointRegion] The region of destination instance.
  /// [destinationEndpointUserName] The username of database account.
  /// [dtsInstanceId] The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  /// [dtsJobName] The name of migration job.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  /// [sourceEndpointDatabaseName] The name of migrate the database.
  /// [sourceEndpointEngineName] The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  /// [sourceEndpointInstanceId] The ID of source instance.
  /// [sourceEndpointInstanceType] The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [sourceEndpointIp] The ip of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle database.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs.
  /// [sourceEndpointPassword] The password of database account.
  /// [sourceEndpointPort] The port of source endpoint.
  /// [sourceEndpointRegion] The region of source instance.
  /// [sourceEndpointRole] The name of the role configured for the cloud account to which the source instance belongs.
  /// [sourceEndpointUserName] The username of database account.
  /// [status] The status of the resource. Valid values: `Migrating`, `Suspending`. You can suspend the task by specifying `Suspending` and start the task by specifying `Migrating`.
  /// [structureInitialization] Whether to perform a database table structure to migrate.
  MigrationJobArgs({
    String? checkpoint,
    required bool dataInitialization,
    required bool dataSynchronization,
    required String dbList,
    String? destinationEndpointDatabaseName,
    required String destinationEndpointEngineName,
    String? destinationEndpointInstanceId,
    required String destinationEndpointInstanceType,
    String? destinationEndpointIp,
    String? destinationEndpointOracleSid,
    String? destinationEndpointPassword,
    String? destinationEndpointPort,
    String? destinationEndpointRegion,
    String? destinationEndpointUserName,
    required String dtsInstanceId,
    String? dtsJobName,
    String? instanceClass,
    String? sourceEndpointDatabaseName,
    required String sourceEndpointEngineName,
    String? sourceEndpointInstanceId,
    required String sourceEndpointInstanceType,
    String? sourceEndpointIp,
    String? sourceEndpointOracleSid,
    String? sourceEndpointOwnerId,
    String? sourceEndpointPassword,
    String? sourceEndpointPort,
    String? sourceEndpointRegion,
    String? sourceEndpointRole,
    String? sourceEndpointUserName,
    String? status,
    required bool structureInitialization,
  }) :
      checkpoint = pulumi.Input.asOptionalInput<String>(checkpoint),
      dataInitialization = pulumi.Input.asInput<bool>(dataInitialization),
      dataSynchronization = pulumi.Input.asInput<bool>(dataSynchronization),
      dbList = pulumi.Input.asInput<String>(dbList),
      destinationEndpointDatabaseName = pulumi.Input.asOptionalInput<String>(destinationEndpointDatabaseName),
      destinationEndpointEngineName = pulumi.Input.asInput<String>(destinationEndpointEngineName),
      destinationEndpointInstanceId = pulumi.Input.asOptionalInput<String>(destinationEndpointInstanceId),
      destinationEndpointInstanceType = pulumi.Input.asInput<String>(destinationEndpointInstanceType),
      destinationEndpointIp = pulumi.Input.asOptionalInput<String>(destinationEndpointIp),
      destinationEndpointOracleSid = pulumi.Input.asOptionalInput<String>(destinationEndpointOracleSid),
      destinationEndpointPassword = pulumi.Input.asOptionalInput<String>(destinationEndpointPassword),
      destinationEndpointPort = pulumi.Input.asOptionalInput<String>(destinationEndpointPort),
      destinationEndpointRegion = pulumi.Input.asOptionalInput<String>(destinationEndpointRegion),
      destinationEndpointUserName = pulumi.Input.asOptionalInput<String>(destinationEndpointUserName),
      dtsInstanceId = pulumi.Input.asInput<String>(dtsInstanceId),
      dtsJobName = pulumi.Input.asOptionalInput<String>(dtsJobName),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      sourceEndpointDatabaseName = pulumi.Input.asOptionalInput<String>(sourceEndpointDatabaseName),
      sourceEndpointEngineName = pulumi.Input.asInput<String>(sourceEndpointEngineName),
      sourceEndpointInstanceId = pulumi.Input.asOptionalInput<String>(sourceEndpointInstanceId),
      sourceEndpointInstanceType = pulumi.Input.asInput<String>(sourceEndpointInstanceType),
      sourceEndpointIp = pulumi.Input.asOptionalInput<String>(sourceEndpointIp),
      sourceEndpointOracleSid = pulumi.Input.asOptionalInput<String>(sourceEndpointOracleSid),
      sourceEndpointOwnerId = pulumi.Input.asOptionalInput<String>(sourceEndpointOwnerId),
      sourceEndpointPassword = pulumi.Input.asOptionalInput<String>(sourceEndpointPassword),
      sourceEndpointPort = pulumi.Input.asOptionalInput<String>(sourceEndpointPort),
      sourceEndpointRegion = pulumi.Input.asOptionalInput<String>(sourceEndpointRegion),
      sourceEndpointRole = pulumi.Input.asOptionalInput<String>(sourceEndpointRole),
      sourceEndpointUserName = pulumi.Input.asOptionalInput<String>(sourceEndpointUserName),
      status = pulumi.Input.asOptionalInput<String>(status),
      structureInitialization = pulumi.Input.asInput<bool>(structureInitialization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': ?checkpoint,
      'dataInitialization': dataInitialization,
      'dataSynchronization': dataSynchronization,
      'dbList': dbList,
      'destinationEndpointDatabaseName': ?destinationEndpointDatabaseName,
      'destinationEndpointEngineName': destinationEndpointEngineName,
      'destinationEndpointInstanceId': ?destinationEndpointInstanceId,
      'destinationEndpointInstanceType': destinationEndpointInstanceType,
      'destinationEndpointIp': ?destinationEndpointIp,
      'destinationEndpointOracleSid': ?destinationEndpointOracleSid,
      'destinationEndpointPassword': ?destinationEndpointPassword,
      'destinationEndpointPort': ?destinationEndpointPort,
      'destinationEndpointRegion': ?destinationEndpointRegion,
      'destinationEndpointUserName': ?destinationEndpointUserName,
      'dtsInstanceId': dtsInstanceId,
      'dtsJobName': ?dtsJobName,
      'instanceClass': ?instanceClass,
      'sourceEndpointDatabaseName': ?sourceEndpointDatabaseName,
      'sourceEndpointEngineName': sourceEndpointEngineName,
      'sourceEndpointInstanceId': ?sourceEndpointInstanceId,
      'sourceEndpointInstanceType': sourceEndpointInstanceType,
      'sourceEndpointIp': ?sourceEndpointIp,
      'sourceEndpointOracleSid': ?sourceEndpointOracleSid,
      'sourceEndpointOwnerId': ?sourceEndpointOwnerId,
      'sourceEndpointPassword': ?sourceEndpointPassword,
      'sourceEndpointPort': ?sourceEndpointPort,
      'sourceEndpointRegion': ?sourceEndpointRegion,
      'sourceEndpointRole': ?sourceEndpointRole,
      'sourceEndpointUserName': ?sourceEndpointUserName,
      'status': ?status,
      'structureInitialization': structureInitialization,
    };
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      checkpoint: map['checkpoint'] == null ? null : map['checkpoint'] as String,
      dataInitialization: map['dataInitialization'] as bool,
      dataSynchronization: map['dataSynchronization'] as bool,
      dbList: map['dbList'] as String,
      destinationEndpointDatabaseName: map['destinationEndpointDatabaseName'] == null ? null : map['destinationEndpointDatabaseName'] as String,
      destinationEndpointEngineName: map['destinationEndpointEngineName'] as String,
      destinationEndpointInstanceId: map['destinationEndpointInstanceId'] == null ? null : map['destinationEndpointInstanceId'] as String,
      destinationEndpointInstanceType: map['destinationEndpointInstanceType'] as String,
      destinationEndpointIp: map['destinationEndpointIp'] == null ? null : map['destinationEndpointIp'] as String,
      destinationEndpointOracleSid: map['destinationEndpointOracleSid'] == null ? null : map['destinationEndpointOracleSid'] as String,
      destinationEndpointPassword: map['destinationEndpointPassword'] == null ? null : map['destinationEndpointPassword'] as String,
      destinationEndpointPort: map['destinationEndpointPort'] == null ? null : map['destinationEndpointPort'] as String,
      destinationEndpointRegion: map['destinationEndpointRegion'] == null ? null : map['destinationEndpointRegion'] as String,
      destinationEndpointUserName: map['destinationEndpointUserName'] == null ? null : map['destinationEndpointUserName'] as String,
      dtsInstanceId: map['dtsInstanceId'] as String,
      dtsJobName: map['dtsJobName'] == null ? null : map['dtsJobName'] as String,
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass'] as String,
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : map['sourceEndpointDatabaseName'] as String,
      sourceEndpointEngineName: map['sourceEndpointEngineName'] as String,
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : map['sourceEndpointInstanceId'] as String,
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] as String,
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : map['sourceEndpointIp'] as String,
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : map['sourceEndpointOracleSid'] as String,
      sourceEndpointOwnerId: map['sourceEndpointOwnerId'] == null ? null : map['sourceEndpointOwnerId'] as String,
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : map['sourceEndpointPassword'] as String,
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : map['sourceEndpointPort'] as String,
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : map['sourceEndpointRegion'] as String,
      sourceEndpointRole: map['sourceEndpointRole'] == null ? null : map['sourceEndpointRole'] as String,
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : map['sourceEndpointUserName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      structureInitialization: map['structureInitialization'] as bool,
    );
  }
}


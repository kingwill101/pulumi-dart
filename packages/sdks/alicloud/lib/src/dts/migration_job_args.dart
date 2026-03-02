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
    this.checkpoint,
    required this.dataInitialization,
    required this.dataSynchronization,
    required this.dbList,
    this.destinationEndpointDatabaseName,
    required this.destinationEndpointEngineName,
    this.destinationEndpointInstanceId,
    required this.destinationEndpointInstanceType,
    this.destinationEndpointIp,
    this.destinationEndpointOracleSid,
    this.destinationEndpointPassword,
    this.destinationEndpointPort,
    this.destinationEndpointRegion,
    this.destinationEndpointUserName,
    required this.dtsInstanceId,
    this.dtsJobName,
    this.instanceClass,
    this.sourceEndpointDatabaseName,
    required this.sourceEndpointEngineName,
    this.sourceEndpointInstanceId,
    required this.sourceEndpointInstanceType,
    this.sourceEndpointIp,
    this.sourceEndpointOracleSid,
    this.sourceEndpointOwnerId,
    this.sourceEndpointPassword,
    this.sourceEndpointPort,
    this.sourceEndpointRegion,
    this.sourceEndpointRole,
    this.sourceEndpointUserName,
    this.status,
    required this.structureInitialization,
  });

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
      checkpoint: map['checkpoint'] == null ? null : (map['checkpoint']! as String).input(),
      dataInitialization: (map['dataInitialization'] as bool).input(),
      dataSynchronization: (map['dataSynchronization'] as bool).input(),
      dbList: (map['dbList'] as String).input(),
      destinationEndpointDatabaseName: map['destinationEndpointDatabaseName'] == null ? null : (map['destinationEndpointDatabaseName']! as String).input(),
      destinationEndpointEngineName: (map['destinationEndpointEngineName'] as String).input(),
      destinationEndpointInstanceId: map['destinationEndpointInstanceId'] == null ? null : (map['destinationEndpointInstanceId']! as String).input(),
      destinationEndpointInstanceType: (map['destinationEndpointInstanceType'] as String).input(),
      destinationEndpointIp: map['destinationEndpointIp'] == null ? null : (map['destinationEndpointIp']! as String).input(),
      destinationEndpointOracleSid: map['destinationEndpointOracleSid'] == null ? null : (map['destinationEndpointOracleSid']! as String).input(),
      destinationEndpointPassword: map['destinationEndpointPassword'] == null ? null : (map['destinationEndpointPassword']! as String).input(),
      destinationEndpointPort: map['destinationEndpointPort'] == null ? null : (map['destinationEndpointPort']! as String).input(),
      destinationEndpointRegion: map['destinationEndpointRegion'] == null ? null : (map['destinationEndpointRegion']! as String).input(),
      destinationEndpointUserName: map['destinationEndpointUserName'] == null ? null : (map['destinationEndpointUserName']! as String).input(),
      dtsInstanceId: (map['dtsInstanceId'] as String).input(),
      dtsJobName: map['dtsJobName'] == null ? null : (map['dtsJobName']! as String).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass']! as String).input(),
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : (map['sourceEndpointDatabaseName']! as String).input(),
      sourceEndpointEngineName: (map['sourceEndpointEngineName'] as String).input(),
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : (map['sourceEndpointInstanceId']! as String).input(),
      sourceEndpointInstanceType: (map['sourceEndpointInstanceType'] as String).input(),
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : (map['sourceEndpointIp']! as String).input(),
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : (map['sourceEndpointOracleSid']! as String).input(),
      sourceEndpointOwnerId: map['sourceEndpointOwnerId'] == null ? null : (map['sourceEndpointOwnerId']! as String).input(),
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : (map['sourceEndpointPassword']! as String).input(),
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : (map['sourceEndpointPort']! as String).input(),
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : (map['sourceEndpointRegion']! as String).input(),
      sourceEndpointRole: map['sourceEndpointRole'] == null ? null : (map['sourceEndpointRole']! as String).input(),
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : (map['sourceEndpointUserName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      structureInitialization: (map['structureInitialization'] as bool).input(),
    );
  }
}


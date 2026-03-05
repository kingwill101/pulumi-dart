// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSynchronizationJobsJob {
  /// Start time in Unix timestamp format.
  final pulumi.Input<String> checkpoint;
  final pulumi.Input<String> createTime;
  /// Whether to execute DTS supports schema migration, full data migration, or full-data initialization.
  final pulumi.Input<bool> dataInitialization;
  /// Whether to perform incremental data migration for migration types or synchronization.
  final pulumi.Input<bool> dataSynchronization;
  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, synchronization or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  final pulumi.Input<String> dbList;
  /// The name of migrate the database.
  final pulumi.Input<String> destinationEndpointDataBaseName;
  /// The type of destination database. Valid values: `ADB20`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  final pulumi.Input<String> destinationEndpointEngineName;
  /// The ID of destination instance.
  final pulumi.Input<String> destinationEndpointInstanceId;
  /// The type of destination instance. Valid values: `ads`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String> destinationEndpointInstanceType;
  /// The ip of source endpoint.
  final pulumi.Input<String> destinationEndpointIp;
  /// The SID of Oracle database.
  final pulumi.Input<String> destinationEndpointOracleSid;
  /// The port of source endpoint.
  final pulumi.Input<String> destinationEndpointPort;
  /// The region of destination instance.
  final pulumi.Input<String> destinationEndpointRegion;
  /// The username of database account.
  final pulumi.Input<String> destinationEndpointUserName;
  final pulumi.Input<String> dtsInstanceId;
  final pulumi.Input<String> dtsJobId;
  /// The name of synchronization job.
  final pulumi.Input<String> dtsJobName;
  final pulumi.Input<String> expireTime;
  /// The ID of synchronizing instance. It's the ID of resource `alicloud.dts.SynchronizationInstance`.
  final pulumi.Input<String> id;
  /// The name of migrate the database.
  final pulumi.Input<String> sourceEndpointDatabaseName;
  /// The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  final pulumi.Input<String> sourceEndpointEngineName;
  /// The ID of source instance.
  final pulumi.Input<String> sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final pulumi.Input<String> sourceEndpointInstanceType;
  /// The ip of source endpoint.
  final pulumi.Input<String> sourceEndpointIp;
  /// The SID of Oracle database.
  final pulumi.Input<String> sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs.
  final pulumi.Input<String> sourceEndpointOwnerId;
  /// The port of source endpoint.
  final pulumi.Input<String> sourceEndpointPort;
  /// The region of source instance.
  final pulumi.Input<String> sourceEndpointRegion;
  /// The name of the role configured for the cloud account to which the source instance belongs.
  final pulumi.Input<String> sourceEndpointRole;
  /// The username of database account.
  final pulumi.Input<String> sourceEndpointUserName;
  /// The status of the resource. Valid values: `Synchronizing`, `Suspending`. You can stop the task by specifying `Suspending` and start the task by specifying `Synchronizing`.
  final pulumi.Input<String> status;
  /// Whether to perform a database table structure to migrate or initialization values include:
  final pulumi.Input<bool> structureInitialization;
  /// Synchronization direction. Valid values: `Forward`, `Reverse`. Only when the property `sync_architecture` of the `alicloud.dts.SynchronizationInstance` was `bidirectional` this parameter should be passed, otherwise this parameter should not be specified.
  final pulumi.Input<String> synchronizationDirection;

  /// Creates a new [GetSynchronizationJobsJob].
  /// [checkpoint] Start time in Unix timestamp format.
  /// [createTime] Required.
  /// [dataInitialization] Whether to execute DTS supports schema migration, full data migration, or full-data initialization.
  /// [dataSynchronization] Whether to perform incremental data migration for migration types or synchronization.
  /// [dbList] Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, synchronization or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  /// [destinationEndpointDataBaseName] The name of migrate the database.
  /// [destinationEndpointEngineName] The type of destination database. Valid values: `ADB20`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  /// [destinationEndpointInstanceId] The ID of destination instance.
  /// [destinationEndpointInstanceType] The type of destination instance. Valid values: `ads`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [destinationEndpointIp] The ip of source endpoint.
  /// [destinationEndpointOracleSid] The SID of Oracle database.
  /// [destinationEndpointPort] The port of source endpoint.
  /// [destinationEndpointRegion] The region of destination instance.
  /// [destinationEndpointUserName] The username of database account.
  /// [dtsInstanceId] Required.
  /// [dtsJobId] Required.
  /// [dtsJobName] The name of synchronization job.
  /// [expireTime] Required.
  /// [id] The ID of synchronizing instance. It's the ID of resource `alicloud.dts.SynchronizationInstance`.
  /// [sourceEndpointDatabaseName] The name of migrate the database.
  /// [sourceEndpointEngineName] The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  /// [sourceEndpointInstanceId] The ID of source instance.
  /// [sourceEndpointInstanceType] The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  /// [sourceEndpointIp] The ip of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle database.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs.
  /// [sourceEndpointPort] The port of source endpoint.
  /// [sourceEndpointRegion] The region of source instance.
  /// [sourceEndpointRole] The name of the role configured for the cloud account to which the source instance belongs.
  /// [sourceEndpointUserName] The username of database account.
  /// [status] The status of the resource. Valid values: `Synchronizing`, `Suspending`. You can stop the task by specifying `Suspending` and start the task by specifying `Synchronizing`.
  /// [structureInitialization] Whether to perform a database table structure to migrate or initialization values include:
  /// [synchronizationDirection] Synchronization direction. Valid values: `Forward`, `Reverse`. Only when the property `sync_architecture` of the `alicloud.dts.SynchronizationInstance` was `bidirectional` this parameter should be passed, otherwise this parameter should not be specified.
  GetSynchronizationJobsJob({
    required this.checkpoint,
    required this.createTime,
    required this.dataInitialization,
    required this.dataSynchronization,
    required this.dbList,
    required this.destinationEndpointDataBaseName,
    required this.destinationEndpointEngineName,
    required this.destinationEndpointInstanceId,
    required this.destinationEndpointInstanceType,
    required this.destinationEndpointIp,
    required this.destinationEndpointOracleSid,
    required this.destinationEndpointPort,
    required this.destinationEndpointRegion,
    required this.destinationEndpointUserName,
    required this.dtsInstanceId,
    required this.dtsJobId,
    required this.dtsJobName,
    required this.expireTime,
    required this.id,
    required this.sourceEndpointDatabaseName,
    required this.sourceEndpointEngineName,
    required this.sourceEndpointInstanceId,
    required this.sourceEndpointInstanceType,
    required this.sourceEndpointIp,
    required this.sourceEndpointOracleSid,
    required this.sourceEndpointOwnerId,
    required this.sourceEndpointPort,
    required this.sourceEndpointRegion,
    required this.sourceEndpointRole,
    required this.sourceEndpointUserName,
    required this.status,
    required this.structureInitialization,
    required this.synchronizationDirection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpoint': checkpoint,
      'createTime': createTime,
      'dataInitialization': dataInitialization,
      'dataSynchronization': dataSynchronization,
      'dbList': dbList,
      'destinationEndpointDataBaseName': destinationEndpointDataBaseName,
      'destinationEndpointEngineName': destinationEndpointEngineName,
      'destinationEndpointInstanceId': destinationEndpointInstanceId,
      'destinationEndpointInstanceType': destinationEndpointInstanceType,
      'destinationEndpointIp': destinationEndpointIp,
      'destinationEndpointOracleSid': destinationEndpointOracleSid,
      'destinationEndpointPort': destinationEndpointPort,
      'destinationEndpointRegion': destinationEndpointRegion,
      'destinationEndpointUserName': destinationEndpointUserName,
      'dtsInstanceId': dtsInstanceId,
      'dtsJobId': dtsJobId,
      'dtsJobName': dtsJobName,
      'expireTime': expireTime,
      'id': id,
      'sourceEndpointDatabaseName': sourceEndpointDatabaseName,
      'sourceEndpointEngineName': sourceEndpointEngineName,
      'sourceEndpointInstanceId': sourceEndpointInstanceId,
      'sourceEndpointInstanceType': sourceEndpointInstanceType,
      'sourceEndpointIp': sourceEndpointIp,
      'sourceEndpointOracleSid': sourceEndpointOracleSid,
      'sourceEndpointOwnerId': sourceEndpointOwnerId,
      'sourceEndpointPort': sourceEndpointPort,
      'sourceEndpointRegion': sourceEndpointRegion,
      'sourceEndpointRole': sourceEndpointRole,
      'sourceEndpointUserName': sourceEndpointUserName,
      'status': status,
      'structureInitialization': structureInitialization,
      'synchronizationDirection': synchronizationDirection,
    };
  }

  factory GetSynchronizationJobsJob.fromMap(Map<String, dynamic> map) {
    return GetSynchronizationJobsJob(
      checkpoint: pulumi.Input.fromValue(map['checkpoint'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataInitialization: pulumi.Input.fromValue(map['dataInitialization'] as bool),
      dataSynchronization: pulumi.Input.fromValue(map['dataSynchronization'] as bool),
      dbList: pulumi.Input.fromValue(map['dbList'] as String),
      destinationEndpointDataBaseName: pulumi.Input.fromValue(map['destinationEndpointDataBaseName'] as String),
      destinationEndpointEngineName: pulumi.Input.fromValue(map['destinationEndpointEngineName'] as String),
      destinationEndpointInstanceId: pulumi.Input.fromValue(map['destinationEndpointInstanceId'] as String),
      destinationEndpointInstanceType: pulumi.Input.fromValue(map['destinationEndpointInstanceType'] as String),
      destinationEndpointIp: pulumi.Input.fromValue(map['destinationEndpointIp'] as String),
      destinationEndpointOracleSid: pulumi.Input.fromValue(map['destinationEndpointOracleSid'] as String),
      destinationEndpointPort: pulumi.Input.fromValue(map['destinationEndpointPort'] as String),
      destinationEndpointRegion: pulumi.Input.fromValue(map['destinationEndpointRegion'] as String),
      destinationEndpointUserName: pulumi.Input.fromValue(map['destinationEndpointUserName'] as String),
      dtsInstanceId: pulumi.Input.fromValue(map['dtsInstanceId'] as String),
      dtsJobId: pulumi.Input.fromValue(map['dtsJobId'] as String),
      dtsJobName: pulumi.Input.fromValue(map['dtsJobName'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      sourceEndpointDatabaseName: pulumi.Input.fromValue(map['sourceEndpointDatabaseName'] as String),
      sourceEndpointEngineName: pulumi.Input.fromValue(map['sourceEndpointEngineName'] as String),
      sourceEndpointInstanceId: pulumi.Input.fromValue(map['sourceEndpointInstanceId'] as String),
      sourceEndpointInstanceType: pulumi.Input.fromValue(map['sourceEndpointInstanceType'] as String),
      sourceEndpointIp: pulumi.Input.fromValue(map['sourceEndpointIp'] as String),
      sourceEndpointOracleSid: pulumi.Input.fromValue(map['sourceEndpointOracleSid'] as String),
      sourceEndpointOwnerId: pulumi.Input.fromValue(map['sourceEndpointOwnerId'] as String),
      sourceEndpointPort: pulumi.Input.fromValue(map['sourceEndpointPort'] as String),
      sourceEndpointRegion: pulumi.Input.fromValue(map['sourceEndpointRegion'] as String),
      sourceEndpointRole: pulumi.Input.fromValue(map['sourceEndpointRole'] as String),
      sourceEndpointUserName: pulumi.Input.fromValue(map['sourceEndpointUserName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      structureInitialization: pulumi.Input.fromValue(map['structureInitialization'] as bool),
      synchronizationDirection: pulumi.Input.fromValue(map['synchronizationDirection'] as String),
    );
  }
}


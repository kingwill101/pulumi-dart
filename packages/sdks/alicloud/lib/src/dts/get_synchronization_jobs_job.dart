// ignore_for_file: unused_element, unnecessary_cast


class GetSynchronizationJobsJob {
  /// Start time in Unix timestamp format.
  final String checkpoint;
  final String createTime;
  /// Whether to execute DTS supports schema migration, full data migration, or full-data initialization.
  final bool dataInitialization;
  /// Whether to perform incremental data migration for migration types or synchronization.
  final bool dataSynchronization;
  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, synchronization or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  final String dbList;
  /// The name of migrate the database.
  final String destinationEndpointDataBaseName;
  /// The type of destination database. Valid values: `ADB20`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  final String destinationEndpointEngineName;
  /// The ID of destination instance.
  final String destinationEndpointInstanceId;
  /// The type of destination instance. Valid values: `ads`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final String destinationEndpointInstanceType;
  /// The ip of source endpoint.
  final String destinationEndpointIp;
  /// The SID of Oracle database.
  final String destinationEndpointOracleSid;
  /// The port of source endpoint.
  final String destinationEndpointPort;
  /// The region of destination instance.
  final String destinationEndpointRegion;
  /// The username of database account.
  final String destinationEndpointUserName;
  final String dtsInstanceId;
  final String dtsJobId;
  /// The name of synchronization job.
  final String dtsJobName;
  final String expireTime;
  /// The ID of synchronizing instance. It's the ID of resource `alicloud.dts.SynchronizationInstance`.
  final String id;
  /// The name of migrate the database.
  final String sourceEndpointDatabaseName;
  /// The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  final String sourceEndpointEngineName;
  /// The ID of source instance.
  final String sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  final String sourceEndpointInstanceType;
  /// The ip of source endpoint.
  final String sourceEndpointIp;
  /// The SID of Oracle database.
  final String sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs.
  final String sourceEndpointOwnerId;
  /// The port of source endpoint.
  final String sourceEndpointPort;
  /// The region of source instance.
  final String sourceEndpointRegion;
  /// The name of the role configured for the cloud account to which the source instance belongs.
  final String sourceEndpointRole;
  /// The username of database account.
  final String sourceEndpointUserName;
  /// The status of the resource. Valid values: `Synchronizing`, `Suspending`. You can stop the task by specifying `Suspending` and start the task by specifying `Synchronizing`.
  final String status;
  /// Whether to perform a database table structure to migrate or initialization values include:
  final bool structureInitialization;
  /// Synchronization direction. Valid values: `Forward`, `Reverse`. Only when the property `sync_architecture` of the `alicloud.dts.SynchronizationInstance` was `bidirectional` this parameter should be passed, otherwise this parameter should not be specified.
  final String synchronizationDirection;

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
      checkpoint: map['checkpoint'] as String,
      createTime: map['createTime'] as String,
      dataInitialization: map['dataInitialization'] as bool,
      dataSynchronization: map['dataSynchronization'] as bool,
      dbList: map['dbList'] as String,
      destinationEndpointDataBaseName: map['destinationEndpointDataBaseName'] as String,
      destinationEndpointEngineName: map['destinationEndpointEngineName'] as String,
      destinationEndpointInstanceId: map['destinationEndpointInstanceId'] as String,
      destinationEndpointInstanceType: map['destinationEndpointInstanceType'] as String,
      destinationEndpointIp: map['destinationEndpointIp'] as String,
      destinationEndpointOracleSid: map['destinationEndpointOracleSid'] as String,
      destinationEndpointPort: map['destinationEndpointPort'] as String,
      destinationEndpointRegion: map['destinationEndpointRegion'] as String,
      destinationEndpointUserName: map['destinationEndpointUserName'] as String,
      dtsInstanceId: map['dtsInstanceId'] as String,
      dtsJobId: map['dtsJobId'] as String,
      dtsJobName: map['dtsJobName'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] as String,
      sourceEndpointEngineName: map['sourceEndpointEngineName'] as String,
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] as String,
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] as String,
      sourceEndpointIp: map['sourceEndpointIp'] as String,
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] as String,
      sourceEndpointOwnerId: map['sourceEndpointOwnerId'] as String,
      sourceEndpointPort: map['sourceEndpointPort'] as String,
      sourceEndpointRegion: map['sourceEndpointRegion'] as String,
      sourceEndpointRole: map['sourceEndpointRole'] as String,
      sourceEndpointUserName: map['sourceEndpointUserName'] as String,
      status: map['status'] as String,
      structureInitialization: map['structureInitialization'] as bool,
      synchronizationDirection: map['synchronizationDirection'] as String,
    );
  }
}


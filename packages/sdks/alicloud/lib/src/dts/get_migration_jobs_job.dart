// ignore_for_file: unused_element, unnecessary_cast


class GetMigrationJobsJob {
  /// Whether or not to execute DTS supports schema migration, full data migration, or full-data initialization.
  final bool dataInitialization;
  /// Whether to perform incremental data migration for migration types or synchronization values include:
  final bool dataSynchronization;
  /// The Migration object, in the format of JSON strings.
  final String dbList;
  /// The name of migrate the database.
  final String destinationEndpointDataBaseName;
  /// The type of destination database.
  final String destinationEndpointEngineName;
  /// The ID of destination instance.
  final String destinationEndpointInstanceId;
  /// The type of destination instance.
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
  /// The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  final String dtsInstanceId;
  /// The ID of the Migration Job.
  final String dtsJobId;
  /// The name of synchronization job.
  final String dtsJobName;
  /// The ID of the Migration Job. Its value is same as `dts_job_id`.
  final String id;
  /// The payment type of the Migration Instance.
  final String paymentType;
  /// The name of migrate the database.
  final String sourceEndpointDatabaseName;
  /// The type of source database.
  final String sourceEndpointEngineName;
  /// The ID of source instance.
  final String sourceEndpointInstanceId;
  /// The type of source instance.
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
  /// The status of the resource.
  final String status;
  /// Whether to perform a database table structure to migrate or initialization.
  final bool structureInitialization;

  /// Creates a new [GetMigrationJobsJob].
  /// [dataInitialization] Whether or not to execute DTS supports schema migration, full data migration, or full-data initialization.
  /// [dataSynchronization] Whether to perform incremental data migration for migration types or synchronization values include:
  /// [dbList] The Migration object, in the format of JSON strings.
  /// [destinationEndpointDataBaseName] The name of migrate the database.
  /// [destinationEndpointEngineName] The type of destination database.
  /// [destinationEndpointInstanceId] The ID of destination instance.
  /// [destinationEndpointInstanceType] The type of destination instance.
  /// [destinationEndpointIp] The ip of source endpoint.
  /// [destinationEndpointOracleSid] The SID of Oracle database.
  /// [destinationEndpointPort] The port of source endpoint.
  /// [destinationEndpointRegion] The region of destination instance.
  /// [destinationEndpointUserName] The username of database account.
  /// [dtsInstanceId] The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  /// [dtsJobId] The ID of the Migration Job.
  /// [dtsJobName] The name of synchronization job.
  /// [id] The ID of the Migration Job. Its value is same as `dts_job_id`.
  /// [paymentType] The payment type of the Migration Instance.
  /// [sourceEndpointDatabaseName] The name of migrate the database.
  /// [sourceEndpointEngineName] The type of source database.
  /// [sourceEndpointInstanceId] The ID of source instance.
  /// [sourceEndpointInstanceType] The type of source instance.
  /// [sourceEndpointIp] The ip of source endpoint.
  /// [sourceEndpointOracleSid] The SID of Oracle database.
  /// [sourceEndpointOwnerId] The Alibaba Cloud account ID to which the source instance belongs.
  /// [sourceEndpointPort] The port of source endpoint.
  /// [sourceEndpointRegion] The region of source instance.
  /// [sourceEndpointRole] The name of the role configured for the cloud account to which the source instance belongs.
  /// [sourceEndpointUserName] The username of database account.
  /// [status] The status of the resource.
  /// [structureInitialization] Whether to perform a database table structure to migrate or initialization.
  GetMigrationJobsJob({
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
    required this.id,
    required this.paymentType,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'id': id,
      'paymentType': paymentType,
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
    };
  }

  factory GetMigrationJobsJob.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobsJob(
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
      id: map['id'] as String,
      paymentType: map['paymentType'] as String,
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
    );
  }
}


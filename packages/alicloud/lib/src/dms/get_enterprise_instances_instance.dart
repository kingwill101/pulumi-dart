// ignore_for_file: unused_element, unnecessary_cast


class GetEnterpriseInstancesInstance {
  /// The name of the data link for the database instance.
  final String dataLinkName;
  /// The logon password of the database instance.
  final String databasePassword;
  /// The logon username of the database instance.
  final String databaseUser;
  /// The ID of the database administrator (DBA) of the database instance.
  final String dbaId;
  /// The nickname of the DBA.
  final String dbaNickName;
  /// Indicates whether the online data description language (DDL) service was enabled for the database instance.
  final int ddlOnline;
  /// The ID of the Elastic Compute Service (ECS) instance to which the database instance belongs.
  final String ecsInstanceId;
  /// The region where the database instance resides.
  final String ecsRegion;
  /// The type of the environment to which the database instance belongs.
  final String envType;
  /// The timeout period for exporting the database instance.
  final int exportTimeout;
  /// The endpoint of the database instance.
  final String host;
  final String id;
  /// The alias of the database instance.
  final String instanceAlias;
  /// The ID of the database instance.
  final String instanceId;
  final String instanceName;
  /// The source of the database instance.
  final String instanceSource;
  /// The ID of the database instance.
  final String instanceType;
  /// The connection port of the database instance.
  final int port;
  /// The timeout period for querying the database instance.
  final int queryTimeout;
  /// The ID of the security rule for the database instance.
  final String safeRuleId;
  /// The system ID (SID) of the database instance.
  final String sid;
  /// Filter the results by status of the DMS Enterprise Instances. Valid values: `NORMAL`, `UNAVAILABLE`, `UNKNOWN`, `DELETED`, `DISABLE`.
  final String status;
  /// Indicates whether cross-database query was enabled for the database instance.
  final int useDsql;
  /// The ID of the Virtual Private Cloud (VPC) to which the database instance belongs.
  final String vpcId;

  /// Creates a new [GetEnterpriseInstancesInstance].
  /// [dataLinkName] The name of the data link for the database instance.
  /// [databasePassword] The logon password of the database instance.
  /// [databaseUser] The logon username of the database instance.
  /// [dbaId] The ID of the database administrator (DBA) of the database instance.
  /// [dbaNickName] The nickname of the DBA.
  /// [ddlOnline] Indicates whether the online data description language (DDL) service was enabled for the database instance.
  /// [ecsInstanceId] The ID of the Elastic Compute Service (ECS) instance to which the database instance belongs.
  /// [ecsRegion] The region where the database instance resides.
  /// [envType] The type of the environment to which the database instance belongs.
  /// [exportTimeout] The timeout period for exporting the database instance.
  /// [host] The endpoint of the database instance.
  /// [id] Required.
  /// [instanceAlias] The alias of the database instance.
  /// [instanceId] The ID of the database instance.
  /// [instanceName] Required.
  /// [instanceSource] The source of the database instance.
  /// [instanceType] The ID of the database instance.
  /// [port] The connection port of the database instance.
  /// [queryTimeout] The timeout period for querying the database instance.
  /// [safeRuleId] The ID of the security rule for the database instance.
  /// [sid] The system ID (SID) of the database instance.
  /// [status] Filter the results by status of the DMS Enterprise Instances. Valid values: `NORMAL`, `UNAVAILABLE`, `UNKNOWN`, `DELETED`, `DISABLE`.
  /// [useDsql] Indicates whether cross-database query was enabled for the database instance.
  /// [vpcId] The ID of the Virtual Private Cloud (VPC) to which the database instance belongs.
  GetEnterpriseInstancesInstance({
    required this.dataLinkName,
    required this.databasePassword,
    required this.databaseUser,
    required this.dbaId,
    required this.dbaNickName,
    required this.ddlOnline,
    required this.ecsInstanceId,
    required this.ecsRegion,
    required this.envType,
    required this.exportTimeout,
    required this.host,
    required this.id,
    required this.instanceAlias,
    required this.instanceId,
    required this.instanceName,
    required this.instanceSource,
    required this.instanceType,
    required this.port,
    required this.queryTimeout,
    required this.safeRuleId,
    required this.sid,
    required this.status,
    required this.useDsql,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLinkName': dataLinkName,
      'databasePassword': databasePassword,
      'databaseUser': databaseUser,
      'dbaId': dbaId,
      'dbaNickName': dbaNickName,
      'ddlOnline': ddlOnline,
      'ecsInstanceId': ecsInstanceId,
      'ecsRegion': ecsRegion,
      'envType': envType,
      'exportTimeout': exportTimeout,
      'host': host,
      'id': id,
      'instanceAlias': instanceAlias,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'instanceSource': instanceSource,
      'instanceType': instanceType,
      'port': port,
      'queryTimeout': queryTimeout,
      'safeRuleId': safeRuleId,
      'sid': sid,
      'status': status,
      'useDsql': useDsql,
      'vpcId': vpcId,
    };
  }

  factory GetEnterpriseInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseInstancesInstance(
      dataLinkName: map['dataLinkName'] as String,
      databasePassword: map['databasePassword'] as String,
      databaseUser: map['databaseUser'] as String,
      dbaId: map['dbaId'] as String,
      dbaNickName: map['dbaNickName'] as String,
      ddlOnline: map['ddlOnline'] as int,
      ecsInstanceId: map['ecsInstanceId'] as String,
      ecsRegion: map['ecsRegion'] as String,
      envType: map['envType'] as String,
      exportTimeout: map['exportTimeout'] as int,
      host: map['host'] as String,
      id: map['id'] as String,
      instanceAlias: map['instanceAlias'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      instanceSource: map['instanceSource'] as String,
      instanceType: map['instanceType'] as String,
      port: map['port'] as int,
      queryTimeout: map['queryTimeout'] as int,
      safeRuleId: map['safeRuleId'] as String,
      sid: map['sid'] as String,
      status: map['status'] as String,
      useDsql: map['useDsql'] as int,
      vpcId: map['vpcId'] as String,
    );
  }
}


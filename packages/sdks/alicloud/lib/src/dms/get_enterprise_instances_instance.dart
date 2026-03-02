// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseInstancesInstance {
  /// The name of the data link for the database instance.
  final pulumi.Input<String> dataLinkName;
  /// The logon password of the database instance.
  final pulumi.Input<String> databasePassword;
  /// The logon username of the database instance.
  final pulumi.Input<String> databaseUser;
  /// The ID of the database administrator (DBA) of the database instance.
  final pulumi.Input<String> dbaId;
  /// The nickname of the DBA.
  final pulumi.Input<String> dbaNickName;
  /// Indicates whether the online data description language (DDL) service was enabled for the database instance.
  final pulumi.Input<int> ddlOnline;
  /// The ID of the Elastic Compute Service (ECS) instance to which the database instance belongs.
  final pulumi.Input<String> ecsInstanceId;
  /// The region where the database instance resides.
  final pulumi.Input<String> ecsRegion;
  /// The type of the environment to which the database instance belongs.
  final pulumi.Input<String> envType;
  /// The timeout period for exporting the database instance.
  final pulumi.Input<int> exportTimeout;
  /// The endpoint of the database instance.
  final pulumi.Input<String> host;
  final pulumi.Input<String> id;
  /// The alias of the database instance.
  final pulumi.Input<String> instanceAlias;
  /// The ID of the database instance.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceName;
  /// The source of the database instance.
  final pulumi.Input<String> instanceSource;
  /// The ID of the database instance.
  final pulumi.Input<String> instanceType;
  /// The connection port of the database instance.
  final pulumi.Input<int> port;
  /// The timeout period for querying the database instance.
  final pulumi.Input<int> queryTimeout;
  /// The ID of the security rule for the database instance.
  final pulumi.Input<String> safeRuleId;
  /// The system ID (SID) of the database instance.
  final pulumi.Input<String> sid;
  /// Filter the results by status of the DMS Enterprise Instances. Valid values: `NORMAL`, `UNAVAILABLE`, `UNKNOWN`, `DELETED`, `DISABLE`.
  final pulumi.Input<String> status;
  /// Indicates whether cross-database query was enabled for the database instance.
  final pulumi.Input<int> useDsql;
  /// The ID of the Virtual Private Cloud (VPC) to which the database instance belongs.
  final pulumi.Input<String> vpcId;

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
      dataLinkName: (map['dataLinkName'] as String).input(),
      databasePassword: (map['databasePassword'] as String).input(),
      databaseUser: (map['databaseUser'] as String).input(),
      dbaId: (map['dbaId'] as String).input(),
      dbaNickName: (map['dbaNickName'] as String).input(),
      ddlOnline: (map['ddlOnline'] as int).input(),
      ecsInstanceId: (map['ecsInstanceId'] as String).input(),
      ecsRegion: (map['ecsRegion'] as String).input(),
      envType: (map['envType'] as String).input(),
      exportTimeout: (map['exportTimeout'] as int).input(),
      host: (map['host'] as String).input(),
      id: (map['id'] as String).input(),
      instanceAlias: (map['instanceAlias'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      instanceSource: (map['instanceSource'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      port: (map['port'] as int).input(),
      queryTimeout: (map['queryTimeout'] as int).input(),
      safeRuleId: (map['safeRuleId'] as String).input(),
      sid: (map['sid'] as String).input(),
      status: (map['status'] as String).input(),
      useDsql: (map['useDsql'] as int).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnterpriseInstance resources.
class EnterpriseInstanceState {
  /// Cross-database query datalink name.
  final pulumi.Input<String>? dataLinkName;
  /// Database access password.
  final pulumi.Input<String>? databasePassword;
  /// Database access account.
  final pulumi.Input<String>? databaseUser;
  /// The dba id of the database instance.
  final pulumi.Input<String>? dbaId;
  /// The instance dba nickname.
  final pulumi.Input<String>? dbaNickName;
  /// The DBA of the instance is passed into the Alibaba Cloud uid of the DBA.
  final pulumi.Input<int>? dbaUid;
  /// Whether to use online services, currently only supports MySQL and PolarDB. Valid values: `0` Not used, `1` Native online DDL priority, `2` DMS lock-free table structure change priority.
  final pulumi.Input<int>? ddlOnline;
  /// ECS instance ID. The value of InstanceSource is the ECS self-built library. This value must be passed.
  final pulumi.Input<String>? ecsInstanceId;
  /// The region where the instance is located. This value must be passed when the value of InstanceSource is RDS, ECS self-built library, and VPC dedicated line IDC.
  final pulumi.Input<String>? ecsRegion;
  /// Environment type. Valid values: `product` production environment, `dev` development environment, `pre` pre-release environment, `test` test environment, `sit` SIT environment, `uat` UAT environment, `pet` pressure test environment, `stag` STAG environment.
  final pulumi.Input<String>? envType;
  /// Export timeout, unit: s (seconds).
  final pulumi.Input<int>? exportTimeout;
  /// Host address of the target database.
  final pulumi.Input<String>? host;
  /// Field `instance_alias` has been deprecated from version 1.100.0. Use `instance_name` instead.
  final pulumi.Input<String>? instanceAlias;
  /// The instance id of the database instance.
  final pulumi.Input<String>? instanceId;
  /// Instance name, to help users quickly distinguish positioning.
  final pulumi.Input<String>? instanceName;
  /// The source of the database instance. Valid values: `PUBLIC_OWN`, `RDS`, `ECS_OWN`, `VPC_IDC`.
  final pulumi.Input<String>? instanceSource;
  /// Database type. Valid values: `MySQL`, `SQLServer`, `PostgreSQL`, `Oracle,` `DRDS`, `OceanBase`, `Mongo`, `Redis`.
  final pulumi.Input<String>? instanceType;
  /// Network type. Valid values: `CLASSIC`, `VPC`.
  final pulumi.Input<String>? networkType;
  /// Access port of the target database.
  final pulumi.Input<int>? port;
  /// Query timeout time, unit: s (seconds).
  final pulumi.Input<int>? queryTimeout;
  /// The security rule of the instance is passed into the name of the security rule in the enterprise.
  final pulumi.Input<String>? safeRule;
  /// The safe rule id of the database instance.
  final pulumi.Input<String>? safeRuleId;
  /// The SID. This value must be passed when InstanceType is PostgreSQL or Oracle.
  final pulumi.Input<String>? sid;
  /// Whether the instance ignores test connectivity. Valid values: `true`, `false`.
  final pulumi.Input<bool>? skipTest;
  /// It has been deprecated from provider version 1.100.0 and 'status' instead.
  final pulumi.Input<String>? state;
  /// The instance status.
  final pulumi.Input<String>? status;
  /// The tenant ID.
  final pulumi.Input<int>? tid;
  /// Whether to enable cross-instance query. Valid values: `0` not open, `1` open.
  final pulumi.Input<int>? useDsql;
  /// VPC ID. This value must be passed when the value of InstanceSource is VPC dedicated line IDC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [EnterpriseInstanceState].
  /// [dataLinkName] Cross-database query datalink name.
  /// [databasePassword] Database access password.
  /// [databaseUser] Database access account.
  /// [dbaId] The dba id of the database instance.
  /// [dbaNickName] The instance dba nickname.
  /// [dbaUid] The DBA of the instance is passed into the Alibaba Cloud uid of the DBA.
  /// [ddlOnline] Whether to use online services, currently only supports MySQL and PolarDB. Valid values: `0` Not used, `1` Native online DDL priority, `2` DMS lock-free table structure change priority.
  /// [ecsInstanceId] ECS instance ID. The value of InstanceSource is the ECS self-built library. This value must be passed.
  /// [ecsRegion] The region where the instance is located. This value must be passed when the value of InstanceSource is RDS, ECS self-built library, and VPC dedicated line IDC.
  /// [envType] Environment type. Valid values: `product` production environment, `dev` development environment, `pre` pre-release environment, `test` test environment, `sit` SIT environment, `uat` UAT environment, `pet` pressure test environment, `stag` STAG environment.
  /// [exportTimeout] Export timeout, unit: s (seconds).
  /// [host] Host address of the target database.
  /// [instanceAlias] Field `instance_alias` has been deprecated from version 1.100.0. Use `instance_name` instead.
  /// [instanceId] The instance id of the database instance.
  /// [instanceName] Instance name, to help users quickly distinguish positioning.
  /// [instanceSource] The source of the database instance. Valid values: `PUBLIC_OWN`, `RDS`, `ECS_OWN`, `VPC_IDC`.
  /// [instanceType] Database type. Valid values: `MySQL`, `SQLServer`, `PostgreSQL`, `Oracle,` `DRDS`, `OceanBase`, `Mongo`, `Redis`.
  /// [networkType] Network type. Valid values: `CLASSIC`, `VPC`.
  /// [port] Access port of the target database.
  /// [queryTimeout] Query timeout time, unit: s (seconds).
  /// [safeRule] The security rule of the instance is passed into the name of the security rule in the enterprise.
  /// [safeRuleId] The safe rule id of the database instance.
  /// [sid] The SID. This value must be passed when InstanceType is PostgreSQL or Oracle.
  /// [skipTest] Whether the instance ignores test connectivity. Valid values: `true`, `false`.
  /// [state] It has been deprecated from provider version 1.100.0 and 'status' instead.
  /// [status] The instance status.
  /// [tid] The tenant ID.
  /// [useDsql] Whether to enable cross-instance query. Valid values: `0` not open, `1` open.
  /// [vpcId] VPC ID. This value must be passed when the value of InstanceSource is VPC dedicated line IDC.
  EnterpriseInstanceState({
    this.dataLinkName,
    this.databasePassword,
    this.databaseUser,
    this.dbaId,
    this.dbaNickName,
    this.dbaUid,
    this.ddlOnline,
    this.ecsInstanceId,
    this.ecsRegion,
    this.envType,
    this.exportTimeout,
    this.host,
    this.instanceAlias,
    this.instanceId,
    this.instanceName,
    this.instanceSource,
    this.instanceType,
    this.networkType,
    this.port,
    this.queryTimeout,
    this.safeRule,
    this.safeRuleId,
    this.sid,
    this.skipTest,
    this.state,
    this.status,
    this.tid,
    this.useDsql,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLinkName': ?dataLinkName,
      'databasePassword': ?databasePassword,
      'databaseUser': ?databaseUser,
      'dbaId': ?dbaId,
      'dbaNickName': ?dbaNickName,
      'dbaUid': ?dbaUid,
      'ddlOnline': ?ddlOnline,
      'ecsInstanceId': ?ecsInstanceId,
      'ecsRegion': ?ecsRegion,
      'envType': ?envType,
      'exportTimeout': ?exportTimeout,
      'host': ?host,
      'instanceAlias': ?instanceAlias,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'instanceSource': ?instanceSource,
      'instanceType': ?instanceType,
      'networkType': ?networkType,
      'port': ?port,
      'queryTimeout': ?queryTimeout,
      'safeRule': ?safeRule,
      'safeRuleId': ?safeRuleId,
      'sid': ?sid,
      'skipTest': ?skipTest,
      'state': ?state,
      'status': ?status,
      'tid': ?tid,
      'useDsql': ?useDsql,
      'vpcId': ?vpcId,
    };
  }

  factory EnterpriseInstanceState.fromMap(Map<String, dynamic> map) {
    return EnterpriseInstanceState(
      dataLinkName: map['dataLinkName'] == null ? null : (map['dataLinkName']! as String).input(),
      databasePassword: map['databasePassword'] == null ? null : (map['databasePassword']! as String).input(),
      databaseUser: map['databaseUser'] == null ? null : (map['databaseUser']! as String).input(),
      dbaId: map['dbaId'] == null ? null : (map['dbaId']! as String).input(),
      dbaNickName: map['dbaNickName'] == null ? null : (map['dbaNickName']! as String).input(),
      dbaUid: map['dbaUid'] == null ? null : (map['dbaUid']! as int).input(),
      ddlOnline: map['ddlOnline'] == null ? null : (map['ddlOnline']! as int).input(),
      ecsInstanceId: map['ecsInstanceId'] == null ? null : (map['ecsInstanceId']! as String).input(),
      ecsRegion: map['ecsRegion'] == null ? null : (map['ecsRegion']! as String).input(),
      envType: map['envType'] == null ? null : (map['envType']! as String).input(),
      exportTimeout: map['exportTimeout'] == null ? null : (map['exportTimeout']! as int).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      instanceAlias: map['instanceAlias'] == null ? null : (map['instanceAlias']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceSource: map['instanceSource'] == null ? null : (map['instanceSource']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']! as int).input(),
      safeRule: map['safeRule'] == null ? null : (map['safeRule']! as String).input(),
      safeRuleId: map['safeRuleId'] == null ? null : (map['safeRuleId']! as String).input(),
      sid: map['sid'] == null ? null : (map['sid']! as String).input(),
      skipTest: map['skipTest'] == null ? null : (map['skipTest']! as bool).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tid: map['tid'] == null ? null : (map['tid']! as int).input(),
      useDsql: map['useDsql'] == null ? null : (map['useDsql']! as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}


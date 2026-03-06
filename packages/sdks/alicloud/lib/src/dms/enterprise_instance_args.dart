// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_enterprise_instance_enterprise_instance_args_doc}
/// The set of arguments for EnterpriseInstance.
/// {@endtemplate}
/// {@macro pulumi_dms_enterprise_instance_enterprise_instance_args_doc}
class EnterpriseInstanceArgs {
  /// Cross-database query datalink name.
  final pulumi.Input<String>? dataLinkName;
  /// Database access password.
  final pulumi.Input<String> databasePassword;
  /// Database access account.
  final pulumi.Input<String> databaseUser;
  /// The dba id of the database instance.
  final pulumi.Input<String>? dbaId;
  /// The DBA of the instance is passed into the Alibaba Cloud uid of the DBA.
  final pulumi.Input<int> dbaUid;
  /// Whether to use online services, currently only supports MySQL and PolarDB. Valid values: `0` Not used, `1` Native online DDL priority, `2` DMS lock-free table structure change priority.
  final pulumi.Input<int>? ddlOnline;
  /// ECS instance ID. The value of InstanceSource is the ECS self-built library. This value must be passed.
  final pulumi.Input<String>? ecsInstanceId;
  /// The region where the instance is located. This value must be passed when the value of InstanceSource is RDS, ECS self-built library, and VPC dedicated line IDC.
  final pulumi.Input<String>? ecsRegion;
  /// Environment type. Valid values: `product` production environment, `dev` development environment, `pre` pre-release environment, `test` test environment, `sit` SIT environment, `uat` UAT environment, `pet` pressure test environment, `stag` STAG environment.
  final pulumi.Input<String> envType;
  /// Export timeout, unit: s (seconds).
  final pulumi.Input<int> exportTimeout;
  /// Host address of the target database.
  final pulumi.Input<String> host;
  /// Field `instance_alias` has been deprecated from version 1.100.0. Use `instance_name` instead.
  final pulumi.Input<String>? instanceAlias;
  /// The instance id of the database instance.
  final pulumi.Input<String>? instanceId;
  /// Instance name, to help users quickly distinguish positioning.
  final pulumi.Input<String>? instanceName;
  /// The source of the database instance. Valid values: `PUBLIC_OWN`, `RDS`, `ECS_OWN`, `VPC_IDC`.
  final pulumi.Input<String> instanceSource;
  /// Database type. Valid values: `MySQL`, `SQLServer`, `PostgreSQL`, `Oracle,` `DRDS`, `OceanBase`, `Mongo`, `Redis`.
  final pulumi.Input<String> instanceType;
  /// Network type. Valid values: `CLASSIC`, `VPC`.
  final pulumi.Input<String> networkType;
  /// Access port of the target database.
  final pulumi.Input<int> port;
  /// Query timeout time, unit: s (seconds).
  final pulumi.Input<int> queryTimeout;
  /// The security rule of the instance is passed into the name of the security rule in the enterprise.
  final pulumi.Input<String> safeRule;
  /// The safe rule id of the database instance.
  final pulumi.Input<String>? safeRuleId;
  /// The SID. This value must be passed when InstanceType is PostgreSQL or Oracle.
  final pulumi.Input<String>? sid;
  /// Whether the instance ignores test connectivity. Valid values: `true`, `false`.
  final pulumi.Input<bool>? skipTest;
  /// The tenant ID.
  final pulumi.Input<int>? tid;
  /// Whether to enable cross-instance query. Valid values: `0` not open, `1` open.
  final pulumi.Input<int>? useDsql;
  /// VPC ID. This value must be passed when the value of InstanceSource is VPC dedicated line IDC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [EnterpriseInstanceArgs].
  /// [dataLinkName] Cross-database query datalink name.
  /// [databasePassword] Database access password.
  /// [databaseUser] Database access account.
  /// [dbaId] The dba id of the database instance.
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
  /// [tid] The tenant ID.
  /// [useDsql] Whether to enable cross-instance query. Valid values: `0` not open, `1` open.
  /// [vpcId] VPC ID. This value must be passed when the value of InstanceSource is VPC dedicated line IDC.
  const EnterpriseInstanceArgs({
    this.dataLinkName,
    required this.databasePassword,
    required this.databaseUser,
    this.dbaId,
    required this.dbaUid,
    this.ddlOnline,
    this.ecsInstanceId,
    this.ecsRegion,
    required this.envType,
    required this.exportTimeout,
    required this.host,
    this.instanceAlias,
    this.instanceId,
    this.instanceName,
    required this.instanceSource,
    required this.instanceType,
    required this.networkType,
    required this.port,
    required this.queryTimeout,
    required this.safeRule,
    this.safeRuleId,
    this.sid,
    this.skipTest,
    this.tid,
    this.useDsql,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLinkName': ?dataLinkName,
      'databasePassword': databasePassword,
      'databaseUser': databaseUser,
      'dbaId': ?dbaId,
      'dbaUid': dbaUid,
      'ddlOnline': ?ddlOnline,
      'ecsInstanceId': ?ecsInstanceId,
      'ecsRegion': ?ecsRegion,
      'envType': envType,
      'exportTimeout': exportTimeout,
      'host': host,
      'instanceAlias': ?instanceAlias,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'instanceSource': instanceSource,
      'instanceType': instanceType,
      'networkType': networkType,
      'port': port,
      'queryTimeout': queryTimeout,
      'safeRule': safeRule,
      'safeRuleId': ?safeRuleId,
      'sid': ?sid,
      'skipTest': ?skipTest,
      'tid': ?tid,
      'useDsql': ?useDsql,
      'vpcId': ?vpcId,
    };
  }

  factory EnterpriseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseInstanceArgs(
      dataLinkName: (() { final guardedValue = map['dataLinkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databasePassword: pulumi.Input.fromValue(map['databasePassword'] as String),
      databaseUser: pulumi.Input.fromValue(map['databaseUser'] as String),
      dbaId: (() { final guardedValue = map['dbaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbaUid: pulumi.Input.fromValue(map['dbaUid'] as int),
      ddlOnline: (() { final guardedValue = map['ddlOnline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ecsInstanceId: (() { final guardedValue = map['ecsInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecsRegion: (() { final guardedValue = map['ecsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envType: pulumi.Input.fromValue(map['envType'] as String),
      exportTimeout: pulumi.Input.fromValue(map['exportTimeout'] as int),
      host: pulumi.Input.fromValue(map['host'] as String),
      instanceAlias: (() { final guardedValue = map['instanceAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceSource: pulumi.Input.fromValue(map['instanceSource'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      queryTimeout: pulumi.Input.fromValue(map['queryTimeout'] as int),
      safeRule: pulumi.Input.fromValue(map['safeRule'] as String),
      safeRuleId: (() { final guardedValue = map['safeRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipTest: (() { final guardedValue = map['skipTest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tid: (() { final guardedValue = map['tid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      useDsql: (() { final guardedValue = map['useDsql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


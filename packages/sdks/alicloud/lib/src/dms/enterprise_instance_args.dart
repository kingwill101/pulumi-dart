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
  EnterpriseInstanceArgs({
    pulumi.Output<String>? dataLinkName,
    required pulumi.Output<String> databasePassword,
    required pulumi.Output<String> databaseUser,
    pulumi.Output<String>? dbaId,
    required pulumi.Output<int> dbaUid,
    pulumi.Output<int>? ddlOnline,
    pulumi.Output<String>? ecsInstanceId,
    pulumi.Output<String>? ecsRegion,
    required pulumi.Output<String> envType,
    required pulumi.Output<int> exportTimeout,
    required pulumi.Output<String> host,
    pulumi.Output<String>? instanceAlias,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceName,
    required pulumi.Output<String> instanceSource,
    required pulumi.Output<String> instanceType,
    required pulumi.Output<String> networkType,
    required pulumi.Output<int> port,
    required pulumi.Output<int> queryTimeout,
    required pulumi.Output<String> safeRule,
    pulumi.Output<String>? safeRuleId,
    pulumi.Output<String>? sid,
    pulumi.Output<bool>? skipTest,
    pulumi.Output<int>? tid,
    pulumi.Output<int>? useDsql,
    pulumi.Output<String>? vpcId,
  }) :
      dataLinkName = pulumi.Input.asOptionalInput<String>(dataLinkName),
      databasePassword = pulumi.Input.asInput<String>(databasePassword),
      databaseUser = pulumi.Input.asInput<String>(databaseUser),
      dbaId = pulumi.Input.asOptionalInput<String>(dbaId),
      dbaUid = pulumi.Input.asInput<int>(dbaUid),
      ddlOnline = pulumi.Input.asOptionalInput<int>(ddlOnline),
      ecsInstanceId = pulumi.Input.asOptionalInput<String>(ecsInstanceId),
      ecsRegion = pulumi.Input.asOptionalInput<String>(ecsRegion),
      envType = pulumi.Input.asInput<String>(envType),
      exportTimeout = pulumi.Input.asInput<int>(exportTimeout),
      host = pulumi.Input.asInput<String>(host),
      instanceAlias = pulumi.Input.asOptionalInput<String>(instanceAlias),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceSource = pulumi.Input.asInput<String>(instanceSource),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      networkType = pulumi.Input.asInput<String>(networkType),
      port = pulumi.Input.asInput<int>(port),
      queryTimeout = pulumi.Input.asInput<int>(queryTimeout),
      safeRule = pulumi.Input.asInput<String>(safeRule),
      safeRuleId = pulumi.Input.asOptionalInput<String>(safeRuleId),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      skipTest = pulumi.Input.asOptionalInput<bool>(skipTest),
      tid = pulumi.Input.asOptionalInput<int>(tid),
      useDsql = pulumi.Input.asOptionalInput<int>(useDsql),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      dataLinkName: map['dataLinkName'] == null ? null : pulumi.Output.create<String>(map['dataLinkName'] as String),
      databasePassword: pulumi.Output.create<String>(map['databasePassword'] as String),
      databaseUser: pulumi.Output.create<String>(map['databaseUser'] as String),
      dbaId: map['dbaId'] == null ? null : pulumi.Output.create<String>(map['dbaId'] as String),
      dbaUid: pulumi.Output.create<int>(map['dbaUid'] as int),
      ddlOnline: map['ddlOnline'] == null ? null : pulumi.Output.create<int>(map['ddlOnline'] as int),
      ecsInstanceId: map['ecsInstanceId'] == null ? null : pulumi.Output.create<String>(map['ecsInstanceId'] as String),
      ecsRegion: map['ecsRegion'] == null ? null : pulumi.Output.create<String>(map['ecsRegion'] as String),
      envType: pulumi.Output.create<String>(map['envType'] as String),
      exportTimeout: pulumi.Output.create<int>(map['exportTimeout'] as int),
      host: pulumi.Output.create<String>(map['host'] as String),
      instanceAlias: map['instanceAlias'] == null ? null : pulumi.Output.create<String>(map['instanceAlias'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceSource: pulumi.Output.create<String>(map['instanceSource'] as String),
      instanceType: pulumi.Output.create<String>(map['instanceType'] as String),
      networkType: pulumi.Output.create<String>(map['networkType'] as String),
      port: pulumi.Output.create<int>(map['port'] as int),
      queryTimeout: pulumi.Output.create<int>(map['queryTimeout'] as int),
      safeRule: pulumi.Output.create<String>(map['safeRule'] as String),
      safeRuleId: map['safeRuleId'] == null ? null : pulumi.Output.create<String>(map['safeRuleId'] as String),
      sid: map['sid'] == null ? null : pulumi.Output.create<String>(map['sid'] as String),
      skipTest: map['skipTest'] == null ? null : pulumi.Output.create<bool>(map['skipTest'] as bool),
      tid: map['tid'] == null ? null : pulumi.Output.create<int>(map['tid'] as int),
      useDsql: map['useDsql'] == null ? null : pulumi.Output.create<int>(map['useDsql'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


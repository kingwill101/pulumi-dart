// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_configuration.dart';
import 'broker_encryption_options.dart';
import 'broker_ldap_server_metadata.dart';
import 'broker_logs.dart';
import 'broker_maintenance_window_start_time.dart';
import 'broker_user.dart';

/// {@template pulumi_mq_broker_broker_args_doc}
/// The set of arguments for Broker.
/// {@endtemplate}
/// {@macro pulumi_mq_broker_broker_args_doc}
class BrokerArgs {
  /// Whether to apply broker modifications immediately. Default is `false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engineType` `RabbitMQ`.
  final pulumi.Input<String>? authenticationStrategy;
  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// Name of the broker.
  final pulumi.Input<String>? brokerName;
  /// Configuration block for broker configuration. Applies to `engineType` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  final pulumi.Input<BrokerConfiguration>? configuration;
  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  final pulumi.Input<String>? dataReplicationMode;
  /// ARN of the primary broker used to replicate data in a data replication pair. Required when `dataReplicationMode` is `CRDR`.
  final pulumi.Input<String>? dataReplicationPrimaryBrokerArn;
  /// Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  final pulumi.Input<String>? deploymentMode;
  /// Configuration block containing encryption options. Detailed below.
  final pulumi.Input<BrokerEncryptionOptions>? encryptionOptions;
  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  final pulumi.Input<String> engineType;
  /// Version of the broker engine.
  final pulumi.Input<String> engineVersion;
  /// Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> hostInstanceType;
  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engineType` `RabbitMQ`. Detailed below.
  final pulumi.Input<BrokerLdapServerMetadata>? ldapServerMetadata;
  /// Configuration block for the logging configuration. Detailed below.
  final pulumi.Input<BrokerLogs>? logs;
  /// Configuration block for the maintenance window start time. Detailed below.
  final pulumi.Input<BrokerMaintenanceWindowStartTime>? maintenanceWindowStartTime;
  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of [AWS RAM](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) resource share ARNs that grant the broker access to shared resources for [private networking](https://aws.amazon.com/blogs/big-data/introducing-private-networking-for-amazon-mq-for-rabbitmq/). Applies to `engineType` of `RabbitMQ` only. Because Amazon MQ applies resource shares during a reboot, set `applyImmediately` to `true` for changes to take effect without waiting for the next maintenance window.
  final pulumi.Input<List<String>>? resourceShareArns;
  /// List of security group IDs assigned to the broker.
  final pulumi.Input<List<String>>? securityGroups;
  /// Storage type of the broker. For `engineType` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engineType` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  final pulumi.Input<String>? storageType;
  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the broker. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for broker users. For `engineType` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  final pulumi.Input<List<BrokerUser>>? users;

  /// Creates a new [BrokerArgs].
  /// [applyImmediately] Whether to apply broker modifications immediately. Default is `false`.
  /// [authenticationStrategy] Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engineType` `RabbitMQ`.
  /// [autoMinorVersionUpgrade] Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  /// [brokerName] Name of the broker.
  /// [configuration] Configuration block for broker configuration. Applies to `engineType` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  /// [dataReplicationMode] Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  /// [dataReplicationPrimaryBrokerArn] ARN of the primary broker used to replicate data in a data replication pair. Required when `dataReplicationMode` is `CRDR`.
  /// [deploymentMode] Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  /// [encryptionOptions] Configuration block containing encryption options. Detailed below.
  /// [engineType] Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  /// [engineVersion] Version of the broker engine.
  /// [hostInstanceType] Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  /// [ldapServerMetadata] Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engineType` `RabbitMQ`. Detailed below.
  /// [logs] Configuration block for the logging configuration. Detailed below.
  /// [maintenanceWindowStartTime] Configuration block for the maintenance window start time. Detailed below.
  /// [publiclyAccessible] Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShareArns] Set of [AWS RAM](https://docs.aws.amazon.com/ram/latest/userguide/what-is.html) resource share ARNs that grant the broker access to shared resources for [private networking](https://aws.amazon.com/blogs/big-data/introducing-private-networking-for-amazon-mq-for-rabbitmq/). Applies to `engineType` of `RabbitMQ` only. Because Amazon MQ applies resource shares during a reboot, set `applyImmediately` to `true` for changes to take effect without waiting for the next maintenance window.
  /// [securityGroups] List of security group IDs assigned to the broker.
  /// [storageType] Storage type of the broker. For `engineType` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engineType` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  /// [subnetIds] List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  /// [tags] Map of tags to assign to the broker. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [users] Configuration block for broker users. For `engineType` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  const BrokerArgs({
    this.applyImmediately,
    this.authenticationStrategy,
    this.autoMinorVersionUpgrade,
    this.brokerName,
    this.configuration,
    this.dataReplicationMode,
    this.dataReplicationPrimaryBrokerArn,
    this.deploymentMode,
    this.encryptionOptions,
    required this.engineType,
    required this.engineVersion,
    required this.hostInstanceType,
    this.ldapServerMetadata,
    this.logs,
    this.maintenanceWindowStartTime,
    this.publiclyAccessible,
    this.region,
    this.resourceShareArns,
    this.securityGroups,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'authenticationStrategy': ?authenticationStrategy,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'brokerName': ?brokerName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<BrokerConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'dataReplicationMode': ?dataReplicationMode,
      'dataReplicationPrimaryBrokerArn': ?dataReplicationPrimaryBrokerArn,
      'deploymentMode': ?deploymentMode,
      'encryptionOptions': ?pulumi.Input.mapOptionalInputValue<BrokerEncryptionOptions, Map<String, dynamic>>(encryptionOptions, (value) => value.toMap()),
      'engineType': engineType,
      'engineVersion': engineVersion,
      'hostInstanceType': hostInstanceType,
      'ldapServerMetadata': ?pulumi.Input.mapOptionalInputValue<BrokerLdapServerMetadata, Map<String, dynamic>>(ldapServerMetadata, (value) => value.toMap()),
      'logs': ?pulumi.Input.mapOptionalInputValue<BrokerLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'maintenanceWindowStartTime': ?pulumi.Input.mapOptionalInputValue<BrokerMaintenanceWindowStartTime, Map<String, dynamic>>(maintenanceWindowStartTime, (value) => value.toMap()),
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'resourceShareArns': ?resourceShareArns,
      'securityGroups': ?securityGroups,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'users': ?pulumi.Input.mapOptionalInputValue<List<BrokerUser>, List<Map<String, dynamic>>>(users, (value) => pulumi.Input.encodeList<BrokerUser, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BrokerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerArgs(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authenticationStrategy: (() { final guardedValue = map['authenticationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      brokerName: (() { final guardedValue = map['brokerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataReplicationMode: (() { final guardedValue = map['dataReplicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataReplicationPrimaryBrokerArn: (() { final guardedValue = map['dataReplicationPrimaryBrokerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionOptions: (() { final guardedValue = map['encryptionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerEncryptionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      hostInstanceType: pulumi.Input.fromValue(map['hostInstanceType'] as String),
      ldapServerMetadata: (() { final guardedValue = map['ldapServerMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerLdapServerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceWindowStartTime: (() { final guardedValue = map['maintenanceWindowStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerMaintenanceWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareArns: (() { final guardedValue = map['resourceShareArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BrokerUser>(guardedValue, (value) => BrokerUser.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

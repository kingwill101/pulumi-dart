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

  /// Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engine_type` `RabbitMQ`.
  final pulumi.Input<String>? authenticationStrategy;

  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;

  /// Name of the broker.
  final pulumi.Input<String>? brokerName;

  /// Configuration block for broker configuration. Applies to `engine_type` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  final pulumi.Input<BrokerConfiguration>? configuration;

  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  final pulumi.Input<String>? dataReplicationMode;

  /// ARN of the primary broker used to replicate data in a data replication pair. Required when `data_replication_mode` is `CRDR`.
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
  final pulumi.Input<String> hostInstanceType;

  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engine_type` `RabbitMQ`. Detailed below.
  final pulumi.Input<BrokerLdapServerMetadata>? ldapServerMetadata;

  /// Configuration block for the logging configuration. Detailed below.
  final pulumi.Input<BrokerLogs>? logs;

  /// Configuration block for the maintenance window start time. Detailed below.
  final pulumi.Input<BrokerMaintenanceWindowStartTime>?
  maintenanceWindowStartTime;

  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of security group IDs assigned to the broker.
  final pulumi.Input<List<String>>? securityGroups;

  /// Storage type of the broker. For `engine_type` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engine_type` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  final pulumi.Input<String>? storageType;

  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  final pulumi.Input<List<String>>? subnetIds;

  /// Map of tags to assign to the broker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for broker users. For `engine_type` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<BrokerUser>> users;

  /// Creates a new [BrokerArgs].
  /// [applyImmediately] Whether to apply broker modifications immediately. Default is `false`.
  /// [authenticationStrategy] Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engine_type` `RabbitMQ`.
  /// [autoMinorVersionUpgrade] Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  /// [brokerName] Name of the broker.
  /// [configuration] Configuration block for broker configuration. Applies to `engine_type` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  /// [dataReplicationMode] Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  /// [dataReplicationPrimaryBrokerArn] ARN of the primary broker used to replicate data in a data replication pair. Required when `data_replication_mode` is `CRDR`.
  /// [deploymentMode] Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  /// [encryptionOptions] Configuration block containing encryption options. Detailed below.
  /// [engineType] Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  /// [engineVersion] Version of the broker engine.
  /// [hostInstanceType] Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  /// [ldapServerMetadata] Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engine_type` `RabbitMQ`. Detailed below.
  /// [logs] Configuration block for the logging configuration. Detailed below.
  /// [maintenanceWindowStartTime] Configuration block for the maintenance window start time. Detailed below.
  /// [publiclyAccessible] Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] List of security group IDs assigned to the broker.
  /// [storageType] Storage type of the broker. For `engine_type` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engine_type` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  /// [subnetIds] List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  /// [tags] Map of tags to assign to the broker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [users] Configuration block for broker users. For `engine_type` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  BrokerArgs({
    bool? applyImmediately,
    String? authenticationStrategy,
    bool? autoMinorVersionUpgrade,
    String? brokerName,
    BrokerConfiguration? configuration,
    String? dataReplicationMode,
    String? dataReplicationPrimaryBrokerArn,
    String? deploymentMode,
    BrokerEncryptionOptions? encryptionOptions,
    required String engineType,
    required String engineVersion,
    required String hostInstanceType,
    BrokerLdapServerMetadata? ldapServerMetadata,
    BrokerLogs? logs,
    BrokerMaintenanceWindowStartTime? maintenanceWindowStartTime,
    bool? publiclyAccessible,
    String? region,
    List<String>? securityGroups,
    String? storageType,
    List<String>? subnetIds,
    Map<String, String>? tags,
    required List<BrokerUser> users,
  }) : applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
       authenticationStrategy = pulumi.Input.asOptionalInput<String>(
         authenticationStrategy,
       ),
       autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(
         autoMinorVersionUpgrade,
       ),
       brokerName = pulumi.Input.asOptionalInput<String>(brokerName),
       configuration = pulumi.Input.asOptionalInput<BrokerConfiguration>(
         configuration,
       ),
       dataReplicationMode = pulumi.Input.asOptionalInput<String>(
         dataReplicationMode,
       ),
       dataReplicationPrimaryBrokerArn = pulumi.Input.asOptionalInput<String>(
         dataReplicationPrimaryBrokerArn,
       ),
       deploymentMode = pulumi.Input.asOptionalInput<String>(deploymentMode),
       encryptionOptions = pulumi
           .Input.asOptionalInput<BrokerEncryptionOptions>(encryptionOptions),
       engineType = pulumi.Input.asInput<String>(engineType),
       engineVersion = pulumi.Input.asInput<String>(engineVersion),
       hostInstanceType = pulumi.Input.asInput<String>(hostInstanceType),
       ldapServerMetadata = pulumi
           .Input.asOptionalInput<BrokerLdapServerMetadata>(ldapServerMetadata),
       logs = pulumi.Input.asOptionalInput<BrokerLogs>(logs),
       maintenanceWindowStartTime =
           pulumi.Input.asOptionalInput<BrokerMaintenanceWindowStartTime>(
             maintenanceWindowStartTime,
           ),
       publiclyAccessible = pulumi.Input.asOptionalInput<bool>(
         publiclyAccessible,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroups = pulumi.Input.asOptionalInput<List<String>>(
         securityGroups,
       ),
       storageType = pulumi.Input.asOptionalInput<String>(storageType),
       subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       users = pulumi.Input.asInput<List<BrokerUser>>(users);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'authenticationStrategy': ?authenticationStrategy,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'brokerName': ?brokerName,
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            BrokerConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'dataReplicationMode': ?dataReplicationMode,
      'dataReplicationPrimaryBrokerArn': ?dataReplicationPrimaryBrokerArn,
      'deploymentMode': ?deploymentMode,
      'encryptionOptions':
          ?pulumi.Input.mapOptionalInputValue<
            BrokerEncryptionOptions,
            Map<String, dynamic>
          >(encryptionOptions, (value) => value.toMap()),
      'engineType': engineType,
      'engineVersion': engineVersion,
      'hostInstanceType': hostInstanceType,
      'ldapServerMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            BrokerLdapServerMetadata,
            Map<String, dynamic>
          >(ldapServerMetadata, (value) => value.toMap()),
      'logs':
          ?pulumi.Input.mapOptionalInputValue<BrokerLogs, Map<String, dynamic>>(
            logs,
            (value) => value.toMap(),
          ),
      'maintenanceWindowStartTime':
          ?pulumi.Input.mapOptionalInputValue<
            BrokerMaintenanceWindowStartTime,
            Map<String, dynamic>
          >(maintenanceWindowStartTime, (value) => value.toMap()),
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'users':
          pulumi.Input.mapInputValue<
            List<BrokerUser>,
            List<Map<String, dynamic>>
          >(
            users,
            (value) =>
                pulumi.Input.encodeList<BrokerUser, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory BrokerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerArgs(
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      authenticationStrategy: map['authenticationStrategy'] == null
          ? null
          : map['authenticationStrategy'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null
          ? null
          : map['autoMinorVersionUpgrade'] as bool,
      brokerName: map['brokerName'] == null
          ? null
          : map['brokerName'] as String,
      configuration: map['configuration'] == null
          ? null
          : BrokerConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      dataReplicationMode: map['dataReplicationMode'] == null
          ? null
          : map['dataReplicationMode'] as String,
      dataReplicationPrimaryBrokerArn:
          map['dataReplicationPrimaryBrokerArn'] == null
          ? null
          : map['dataReplicationPrimaryBrokerArn'] as String,
      deploymentMode: map['deploymentMode'] == null
          ? null
          : map['deploymentMode'] as String,
      encryptionOptions: map['encryptionOptions'] == null
          ? null
          : BrokerEncryptionOptions.fromMap(
              (map['encryptionOptions'] as Map).cast<String, dynamic>(),
            ),
      engineType: map['engineType'] as String,
      engineVersion: map['engineVersion'] as String,
      hostInstanceType: map['hostInstanceType'] as String,
      ldapServerMetadata: map['ldapServerMetadata'] == null
          ? null
          : BrokerLdapServerMetadata.fromMap(
              (map['ldapServerMetadata'] as Map).cast<String, dynamic>(),
            ),
      logs: map['logs'] == null
          ? null
          : BrokerLogs.fromMap((map['logs'] as Map).cast<String, dynamic>()),
      maintenanceWindowStartTime: map['maintenanceWindowStartTime'] == null
          ? null
          : BrokerMaintenanceWindowStartTime.fromMap(
              (map['maintenanceWindowStartTime'] as Map)
                  .cast<String, dynamic>(),
            ),
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      storageType: map['storageType'] == null
          ? null
          : map['storageType'] as String,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      users: pulumi.Input.decodeList<BrokerUser>(
        map['users'],
        (value) => BrokerUser.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../broker_configuration/broker_configuration.dart';
import '../broker_encryption_options/broker_encryption_options.dart';
import '../broker_ldap_server_metadata/broker_ldap_server_metadata.dart';
import '../broker_logs/broker_logs.dart';
import '../broker_maintenance_window_start_time/broker_maintenance_window_start_time.dart';
import '../broker_user/broker_user.dart';

/// The set of arguments for Broker.
class BrokerArgs {
  /// Whether to apply broker modifications immediately. Default is `false`.
  final Input<bool>? applyImmediately;

  /// Authentication strategy used to secure the broker. Valid values are `simple` and `ldap`. `ldap` is not supported for `engine_type` `RabbitMQ`.
  final Input<String>? authenticationStrategy;

  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  final Input<bool>? autoMinorVersionUpgrade;

  /// Name of the broker.
  final Input<String>? brokerName;

  /// Configuration block for broker configuration. Applies to `engine_type` of `ActiveMQ` and `RabbitMQ` only. Detailed below.
  final Input<BrokerConfiguration>? configuration;

  /// Whether this broker is part of a data replication pair. Valid values are `CRDR` and `NONE`.
  final Input<String>? dataReplicationMode;

  /// ARN of the primary broker used to replicate data in a data replication pair. Required when `data_replication_mode` is `CRDR`.
  final Input<String>? dataReplicationPrimaryBrokerArn;

  /// Deployment mode of the broker. Valid values are `SINGLE_INSTANCE`, `ACTIVE_STANDBY_MULTI_AZ`, and `CLUSTER_MULTI_AZ`. Default is `SINGLE_INSTANCE`.
  final Input<String>? deploymentMode;

  /// Configuration block containing encryption options. Detailed below.
  final Input<BrokerEncryptionOptions>? encryptionOptions;

  /// Type of broker engine. Valid values are `ActiveMQ` and `RabbitMQ`.
  final Input<String> engineType;

  /// Version of the broker engine.
  final Input<String> engineVersion;

  /// Broker's instance type. For example, `mq.t3.micro`, `mq.m5.large`.
  final Input<String> hostInstanceType;

  /// Configuration block for the LDAP server used to authenticate and authorize connections. Not supported for `engine_type` `RabbitMQ`. Detailed below.
  final Input<BrokerLdapServerMetadata>? ldapServerMetadata;

  /// Configuration block for the logging configuration. Detailed below.
  final Input<BrokerLogs>? logs;

  /// Configuration block for the maintenance window start time. Detailed below.
  final Input<BrokerMaintenanceWindowStartTime>? maintenanceWindowStartTime;

  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of security group IDs assigned to the broker.
  final Input<List<String>>? securityGroups;

  /// Storage type of the broker. For `engine_type` `ActiveMQ`, valid values are `efs` and `ebs` (AWS-default is `efs`). For `engine_type` `RabbitMQ`, only `ebs` is supported. When using `ebs`, only the `mq.m5` broker instance type family is supported.
  final Input<String>? storageType;

  /// List of subnet IDs in which to launch the broker. A `SINGLE_INSTANCE` deployment requires one subnet. An `ACTIVE_STANDBY_MULTI_AZ` deployment requires multiple subnets.
  final Input<List<String>>? subnetIds;

  /// Map of tags to assign to the broker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for broker users. For `engine_type` of `RabbitMQ`, Amazon MQ does not return broker users preventing this resource from making user updates and drift detection. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<List<BrokerUser>> users;

  BrokerArgs({
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
    this.securityGroups,
    this.storageType,
    this.subnetIds,
    this.tags,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final authenticationStrategyValue = authenticationStrategy;
    if (authenticationStrategyValue != null) {
      map['authenticationStrategy'] = authenticationStrategyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final brokerNameValue = brokerName;
    if (brokerNameValue != null) {
      map['brokerName'] = brokerNameValue;
    }
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = Input.mapOptionalInputValue<BrokerConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final dataReplicationModeValue = dataReplicationMode;
    if (dataReplicationModeValue != null) {
      map['dataReplicationMode'] = dataReplicationModeValue;
    }
    final dataReplicationPrimaryBrokerArnValue =
        dataReplicationPrimaryBrokerArn;
    if (dataReplicationPrimaryBrokerArnValue != null) {
      map['dataReplicationPrimaryBrokerArn'] =
          dataReplicationPrimaryBrokerArnValue;
    }
    final deploymentModeValue = deploymentMode;
    if (deploymentModeValue != null) {
      map['deploymentMode'] = deploymentModeValue;
    }
    final encryptionOptionsValue = encryptionOptions;
    if (encryptionOptionsValue != null) {
      map['encryptionOptions'] = Input.mapOptionalInputValue<
              BrokerEncryptionOptions, Map<String, dynamic>>(
          encryptionOptionsValue, (value) => value.toMap());
    }
    map['engineType'] = engineType;
    map['engineVersion'] = engineVersion;
    map['hostInstanceType'] = hostInstanceType;
    final ldapServerMetadataValue = ldapServerMetadata;
    if (ldapServerMetadataValue != null) {
      map['ldapServerMetadata'] = Input.mapOptionalInputValue<
              BrokerLdapServerMetadata, Map<String, dynamic>>(
          ldapServerMetadataValue, (value) => value.toMap());
    }
    final logsValue = logs;
    if (logsValue != null) {
      map['logs'] =
          Input.mapOptionalInputValue<BrokerLogs, Map<String, dynamic>>(
              logsValue, (value) => value.toMap());
    }
    final maintenanceWindowStartTimeValue = maintenanceWindowStartTime;
    if (maintenanceWindowStartTimeValue != null) {
      map['maintenanceWindowStartTime'] = Input.mapOptionalInputValue<
              BrokerMaintenanceWindowStartTime, Map<String, dynamic>>(
          maintenanceWindowStartTimeValue, (value) => value.toMap());
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['users'] =
        Input.mapInputValue<List<BrokerUser>, List<Map<String, dynamic>>>(
            users,
            (value) => Input.encodeList<BrokerUser, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory BrokerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerArgs(
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      authenticationStrategy:
          Input.asOptionalInput<String>(map['authenticationStrategy']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      brokerName: Input.asOptionalInput<String>(map['brokerName']),
      configuration:
          Input.asOptionalInput<BrokerConfiguration>(map['configuration']),
      dataReplicationMode:
          Input.asOptionalInput<String>(map['dataReplicationMode']),
      dataReplicationPrimaryBrokerArn:
          Input.asOptionalInput<String>(map['dataReplicationPrimaryBrokerArn']),
      deploymentMode: Input.asOptionalInput<String>(map['deploymentMode']),
      encryptionOptions: Input.asOptionalInput<BrokerEncryptionOptions>(
          map['encryptionOptions']),
      engineType: Input.asInput<String>(map['engineType']),
      engineVersion: Input.asInput<String>(map['engineVersion']),
      hostInstanceType: Input.asInput<String>(map['hostInstanceType']),
      ldapServerMetadata: Input.asOptionalInput<BrokerLdapServerMetadata>(
          map['ldapServerMetadata']),
      logs: Input.asOptionalInput<BrokerLogs>(map['logs']),
      maintenanceWindowStartTime:
          Input.asOptionalInput<BrokerMaintenanceWindowStartTime>(
              map['maintenanceWindowStartTime']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroups:
          Input.asOptionalInput<List<String>>(map['securityGroups']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      users: Input.asInput<List<BrokerUser>>(map['users']),
    );
  }
}

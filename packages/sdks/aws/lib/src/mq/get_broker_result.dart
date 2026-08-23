// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_configuration.dart';
import 'get_broker_encryption_option.dart';
import 'get_broker_instance.dart';
import 'get_broker_ldap_server_metadata.dart';
import 'get_broker_logs.dart';
import 'get_broker_maintenance_window_start_time.dart';
import 'get_broker_shared_resource.dart';
import 'get_broker_user.dart';

/// Result data returned by getBroker.
class GetBrokerResult {
  /// ARN of the broker.
  final String arn;
  /// Authentication strategy used to secure the broker.
  final String authenticationStrategy;
  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  final bool autoMinorVersionUpgrade;
  final String brokerId;
  final String brokerName;
  /// Configuration block for broker configuration. See `configuration` Block below.
  final GetBrokerConfiguration configuration;
  /// Deployment mode of the broker.
  final String deploymentMode;
  /// Configuration block containing encryption options. See `encryptionOptions` Block below.
  final List<GetBrokerEncryptionOption> encryptionOptions;
  /// Type of broker engine.
  final String engineType;
  /// Version of the broker engine.
  final String engineVersion;
  /// Broker's instance type.
  final String hostInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of information about allocated brokers (both active & standby). See `instances` Block below.
  final List<GetBrokerInstance> instances;
  /// Configuration block for the LDAP server used to authenticate and authorize connections to the broker. See `ldapServerMetadata` Block below.
  final List<GetBrokerLdapServerMetadata> ldapServerMetadatas;
  /// Configuration block for the logging configuration of the broker. See `logs` Block below.
  final GetBrokerLogs logs;
  /// Configuration block for the maintenance window start time. See `maintenanceWindowStartTime` Block below.
  final GetBrokerMaintenanceWindowStartTime maintenanceWindowStartTime;
  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  final bool publiclyAccessible;
  final String region;
  /// Set of AWS RAM resource share ARNs that grant the broker access to shared resources for private networking. Only populated for `engineType` of `RabbitMQ`.
  final List<String> resourceShareArns;
  /// List of security group IDs assigned to the broker.
  final List<String> securityGroups;
  /// List of resources shared with the broker. See `sharedResources` Block below. Only populated for `engineType` of `RabbitMQ`.
  final List<GetBrokerSharedResource> sharedResources;
  /// Storage type of the broker.
  final String storageType;
  /// List of subnet IDs in which to launch the broker.
  final List<String> subnetIds;
  /// Map of tags assigned to the broker.
  final Map<String, String> tags;
  /// Configuration block for broker users. See `user` Block below.
  final List<GetBrokerUser> users;

  /// Creates a new [GetBrokerResult].
  /// [arn] ARN of the broker.
  /// [authenticationStrategy] Authentication strategy used to secure the broker.
  /// [autoMinorVersionUpgrade] Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  /// [brokerId] Required.
  /// [brokerName] Required.
  /// [configuration] Configuration block for broker configuration. See `configuration` Block below.
  /// [deploymentMode] Deployment mode of the broker.
  /// [encryptionOptions] Configuration block containing encryption options. See `encryptionOptions` Block below.
  /// [engineType] Type of broker engine.
  /// [engineVersion] Version of the broker engine.
  /// [hostInstanceType] Broker's instance type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] List of information about allocated brokers (both active & standby). See `instances` Block below.
  /// [ldapServerMetadatas] Configuration block for the LDAP server used to authenticate and authorize connections to the broker. See `ldapServerMetadata` Block below.
  /// [logs] Configuration block for the logging configuration of the broker. See `logs` Block below.
  /// [maintenanceWindowStartTime] Configuration block for the maintenance window start time. See `maintenanceWindowStartTime` Block below.
  /// [publiclyAccessible] Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  /// [region] Required.
  /// [resourceShareArns] Set of AWS RAM resource share ARNs that grant the broker access to shared resources for private networking. Only populated for `engineType` of `RabbitMQ`.
  /// [securityGroups] List of security group IDs assigned to the broker.
  /// [sharedResources] List of resources shared with the broker. See `sharedResources` Block below. Only populated for `engineType` of `RabbitMQ`.
  /// [storageType] Storage type of the broker.
  /// [subnetIds] List of subnet IDs in which to launch the broker.
  /// [tags] Map of tags assigned to the broker.
  /// [users] Configuration block for broker users. See `user` Block below.
  const GetBrokerResult({
    required this.arn,
    required this.authenticationStrategy,
    required this.autoMinorVersionUpgrade,
    required this.brokerId,
    required this.brokerName,
    required this.configuration,
    required this.deploymentMode,
    required this.encryptionOptions,
    required this.engineType,
    required this.engineVersion,
    required this.hostInstanceType,
    required this.id,
    required this.instances,
    required this.ldapServerMetadatas,
    required this.logs,
    required this.maintenanceWindowStartTime,
    required this.publiclyAccessible,
    required this.region,
    required this.resourceShareArns,
    required this.securityGroups,
    required this.sharedResources,
    required this.storageType,
    required this.subnetIds,
    required this.tags,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authenticationStrategy': authenticationStrategy,
      'autoMinorVersionUpgrade': autoMinorVersionUpgrade,
      'brokerId': brokerId,
      'brokerName': brokerName,
      'configuration': configuration.toMap(),
      'deploymentMode': deploymentMode,
      'encryptionOptions': pulumi.Input.encodeList<GetBrokerEncryptionOption, Map<String, dynamic>>(encryptionOptions, (value) => value.toMap()),
      'engineType': engineType,
      'engineVersion': engineVersion,
      'hostInstanceType': hostInstanceType,
      'id': id,
      'instances': pulumi.Input.encodeList<GetBrokerInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'ldapServerMetadatas': pulumi.Input.encodeList<GetBrokerLdapServerMetadata, Map<String, dynamic>>(ldapServerMetadatas, (value) => value.toMap()),
      'logs': logs.toMap(),
      'maintenanceWindowStartTime': maintenanceWindowStartTime.toMap(),
      'publiclyAccessible': publiclyAccessible,
      'region': region,
      'resourceShareArns': resourceShareArns,
      'securityGroups': securityGroups,
      'sharedResources': pulumi.Input.encodeList<GetBrokerSharedResource, Map<String, dynamic>>(sharedResources, (value) => value.toMap()),
      'storageType': storageType,
      'subnetIds': subnetIds,
      'tags': tags,
      'users': pulumi.Input.encodeList<GetBrokerUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetBrokerResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerResult(
      arn: map['arn'] as String,
      authenticationStrategy: map['authenticationStrategy'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] as bool,
      brokerId: map['brokerId'] as String,
      brokerName: map['brokerName'] as String,
      configuration: GetBrokerConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>()),
      deploymentMode: map['deploymentMode'] as String,
      encryptionOptions: pulumi.Input.decodeList<GetBrokerEncryptionOption>(map['encryptionOptions']!, (value) => GetBrokerEncryptionOption.fromMap((value as Map).cast<String, dynamic>())),
      engineType: map['engineType'] as String,
      engineVersion: map['engineVersion'] as String,
      hostInstanceType: map['hostInstanceType'] as String,
      id: map['id'] as String,
      instances: pulumi.Input.decodeList<GetBrokerInstance>(map['instances']!, (value) => GetBrokerInstance.fromMap((value as Map).cast<String, dynamic>())),
      ldapServerMetadatas: pulumi.Input.decodeList<GetBrokerLdapServerMetadata>(map['ldapServerMetadatas']!, (value) => GetBrokerLdapServerMetadata.fromMap((value as Map).cast<String, dynamic>())),
      logs: GetBrokerLogs.fromMap((map['logs']! as Map).cast<String, dynamic>()),
      maintenanceWindowStartTime: GetBrokerMaintenanceWindowStartTime.fromMap((map['maintenanceWindowStartTime']! as Map).cast<String, dynamic>()),
      publiclyAccessible: map['publiclyAccessible'] as bool,
      region: map['region'] as String,
      resourceShareArns: (map['resourceShareArns'] as List).cast<String>(),
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      sharedResources: pulumi.Input.decodeList<GetBrokerSharedResource>(map['sharedResources']!, (value) => GetBrokerSharedResource.fromMap((value as Map).cast<String, dynamic>())),
      storageType: map['storageType'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      users: pulumi.Input.decodeList<GetBrokerUser>(map['users']!, (value) => GetBrokerUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

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
  final String? arn;
  /// Authentication strategy used to secure the broker.
  final String? authenticationStrategy;
  /// Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  final bool? autoMinorVersionUpgrade;
  final String? brokerId;
  final String? brokerName;
  /// Configuration block for broker configuration. See `configuration` Block below.
  final GetBrokerConfiguration? configuration;
  /// Deployment mode of the broker.
  final String? deploymentMode;
  /// Configuration block containing encryption options. See `encryptionOptions` Block below.
  final List<GetBrokerEncryptionOption>? encryptionOptions;
  /// Type of broker engine.
  final String? engineType;
  /// Version of the broker engine.
  final String? engineVersion;
  /// Broker's instance type.
  final String? hostInstanceType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of information about allocated brokers (both active & standby). See `instances` Block below.
  final List<GetBrokerInstance>? instances;
  /// Configuration block for the LDAP server used to authenticate and authorize connections to the broker. See `ldapServerMetadata` Block below.
  final List<GetBrokerLdapServerMetadata>? ldapServerMetadatas;
  /// Configuration block for the logging configuration of the broker. See `logs` Block below.
  final GetBrokerLogs? logs;
  /// Configuration block for the maintenance window start time. See `maintenanceWindowStartTime` Block below.
  final GetBrokerMaintenanceWindowStartTime? maintenanceWindowStartTime;
  /// Whether to enable connections from applications outside of the VPC that hosts the broker's subnets.
  final bool? publiclyAccessible;
  final String? region;
  /// Set of AWS RAM resource share ARNs that grant the broker access to shared resources for private networking. Only populated for `engineType` of `RabbitMQ`.
  final List<String>? resourceShareArns;
  /// List of security group IDs assigned to the broker.
  final List<String>? securityGroups;
  /// List of resources shared with the broker. See `sharedResources` Block below. Only populated for `engineType` of `RabbitMQ`.
  final List<GetBrokerSharedResource>? sharedResources;
  /// Storage type of the broker.
  final String? storageType;
  /// List of subnet IDs in which to launch the broker.
  final List<String>? subnetIds;
  /// Map of tags assigned to the broker.
  final Map<String, String>? tags;
  /// Configuration block for broker users. See `user` Block below.
  final List<GetBrokerUser>? users;

  /// Creates a new [GetBrokerResult].
  /// [arn] ARN of the broker.
  /// [authenticationStrategy] Authentication strategy used to secure the broker.
  /// [autoMinorVersionUpgrade] Whether to automatically upgrade to new minor versions of brokers as Amazon MQ makes releases available.
  /// [brokerId] Optional.
  /// [brokerName] Optional.
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
  /// [region] Optional.
  /// [resourceShareArns] Set of AWS RAM resource share ARNs that grant the broker access to shared resources for private networking. Only populated for `engineType` of `RabbitMQ`.
  /// [securityGroups] List of security group IDs assigned to the broker.
  /// [sharedResources] List of resources shared with the broker. See `sharedResources` Block below. Only populated for `engineType` of `RabbitMQ`.
  /// [storageType] Storage type of the broker.
  /// [subnetIds] List of subnet IDs in which to launch the broker.
  /// [tags] Map of tags assigned to the broker.
  /// [users] Configuration block for broker users. See `user` Block below.
  const GetBrokerResult({
    this.arn,
    this.authenticationStrategy,
    this.autoMinorVersionUpgrade,
    this.brokerId,
    this.brokerName,
    this.configuration,
    this.deploymentMode,
    this.encryptionOptions,
    this.engineType,
    this.engineVersion,
    this.hostInstanceType,
    this.id,
    this.instances,
    this.ldapServerMetadatas,
    this.logs,
    this.maintenanceWindowStartTime,
    this.publiclyAccessible,
    this.region,
    this.resourceShareArns,
    this.securityGroups,
    this.sharedResources,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authenticationStrategy': ?authenticationStrategy,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'brokerId': ?brokerId,
      'brokerName': ?brokerName,
      'configuration': ?configuration?.toMap(),
      'deploymentMode': ?deploymentMode,
      'encryptionOptions': ?(() { final guardedValue = encryptionOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerEncryptionOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'engineType': ?engineType,
      'engineVersion': ?engineVersion,
      'hostInstanceType': ?hostInstanceType,
      'id': ?id,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerInstance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ldapServerMetadatas': ?(() { final guardedValue = ldapServerMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerLdapServerMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'logs': ?logs?.toMap(),
      'maintenanceWindowStartTime': ?maintenanceWindowStartTime?.toMap(),
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'resourceShareArns': ?resourceShareArns,
      'securityGroups': ?securityGroups,
      'sharedResources': ?(() { final guardedValue = sharedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerSharedResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'users': ?(() { final guardedValue = users; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBrokerResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationStrategy: (() { final guardedValue = map['authenticationStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      brokerId: (() { final guardedValue = map['brokerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      brokerName: (() { final guardedValue = map['brokerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return GetBrokerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionOptions: (() { final guardedValue = map['encryptionOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerEncryptionOption>(guardedValue, (value) => GetBrokerEncryptionOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostInstanceType: (() { final guardedValue = map['hostInstanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerInstance>(guardedValue, (value) => GetBrokerInstance.fromMap((value as Map).cast<String, dynamic>())); })(),
      ldapServerMetadatas: (() { final guardedValue = map['ldapServerMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerLdapServerMetadata>(guardedValue, (value) => GetBrokerLdapServerMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return GetBrokerLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      maintenanceWindowStartTime: (() { final guardedValue = map['maintenanceWindowStartTime']; if (guardedValue == null) return null; return GetBrokerMaintenanceWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceShareArns: (() { final guardedValue = map['resourceShareArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sharedResources: (() { final guardedValue = map['sharedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerSharedResource>(guardedValue, (value) => GetBrokerSharedResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerUser>(guardedValue, (value) => GetBrokerUser.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

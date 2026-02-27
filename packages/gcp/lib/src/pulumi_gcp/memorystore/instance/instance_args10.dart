// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_automated_backup_config/instance_automated_backup_config.dart';
import '../instance_cross_instance_replication_config/instance_cross_instance_replication_config.dart';
import '../instance_desired_auto_created_endpoint/instance_desired_auto_created_endpoint.dart';
import '../instance_desired_psc_auto_connection/instance_desired_psc_auto_connection.dart';
import '../instance_gcs_source/instance_gcs_source.dart';
import '../instance_maintenance_policy/instance_maintenance_policy2.dart';
import '../instance_managed_backup_source/instance_managed_backup_source.dart';
import '../instance_persistence_config/instance_persistence_config.dart';
import '../instance_zone_distribution_config/instance_zone_distribution_config.dart';

/// The set of arguments for Instance.
class InstanceArgs10 {
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH
  final Input<String>? authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  final Input<InstanceAutomatedBackupConfig>? automatedBackupConfig;

  /// Cross instance replication config
  /// Structure is documented below.
  final Input<InstanceCrossInstanceReplicationConfig>?
      crossInstanceReplicationConfig;

  /// Optional. If set to true deletion of the instance will fail.
  final Input<bool>? deletionProtectionEnabled;

  /// Immutable. User inputs for the auto-created endpoints connections.
  final Input<List<InstanceDesiredAutoCreatedEndpoint>>?
      desiredAutoCreatedEndpoints;

  /// `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  final Input<List<InstanceDesiredPscAutoConnection>>?
      desiredPscAutoConnections;

  /// Optional. User-provided engine configurations for the instance.
  final Input<Map<String, String>>? engineConfigs;

  /// Optional. Engine version of the instance.
  final Input<String>? engineVersion;

  /// GCS source for the instance.
  /// Structure is documented below.
  final Input<InstanceGcsSource>? gcsSource;

  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  final Input<String> instanceId;

  /// The KMS key used to encrypt the at-rest data of the cluster
  final Input<String>? kmsKey;

  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  final Input<String> location;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final Input<InstanceMaintenancePolicy2>? maintenancePolicy;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final Input<String>? maintenanceVersion;

  /// Managed backup source for the instance.
  /// Structure is documented below.
  final Input<InstanceManagedBackupSource>? managedBackupSource;

  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  final Input<String>? mode;

  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// HIGHMEM_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  final Input<String>? nodeType;

  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  final Input<InstancePersistenceConfig>? persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  final Input<int>? replicaCount;

  /// Required. Number of shards for the instance.
  final Input<int> shardCount;

  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  final Input<String>? transitEncryptionMode;

  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  final Input<InstanceZoneDistributionConfig>? zoneDistributionConfig;

  InstanceArgs10({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.crossInstanceReplicationConfig,
    this.deletionProtectionEnabled,
    this.desiredAutoCreatedEndpoints,
    this.desiredPscAutoConnections,
    this.engineConfigs,
    this.engineVersion,
    this.gcsSource,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.mode,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.replicaCount,
    required this.shardCount,
    this.transitEncryptionMode,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationModeValue = authorizationMode;
    if (authorizationModeValue != null) {
      map['authorizationMode'] = authorizationModeValue;
    }
    final automatedBackupConfigValue = automatedBackupConfig;
    if (automatedBackupConfigValue != null) {
      map['automatedBackupConfig'] = Input.mapOptionalInputValue<
              InstanceAutomatedBackupConfig, Map<String, dynamic>>(
          automatedBackupConfigValue, (value) => value.toMap());
    }
    final crossInstanceReplicationConfigValue = crossInstanceReplicationConfig;
    if (crossInstanceReplicationConfigValue != null) {
      map['crossInstanceReplicationConfig'] = Input.mapOptionalInputValue<
              InstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(
          crossInstanceReplicationConfigValue, (value) => value.toMap());
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final desiredAutoCreatedEndpointsValue = desiredAutoCreatedEndpoints;
    if (desiredAutoCreatedEndpointsValue != null) {
      map['desiredAutoCreatedEndpoints'] = Input.mapOptionalInputValue<
              List<InstanceDesiredAutoCreatedEndpoint>,
              List<Map<String, dynamic>>>(
          desiredAutoCreatedEndpointsValue,
          (value) => Input.encodeList<InstanceDesiredAutoCreatedEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final desiredPscAutoConnectionsValue = desiredPscAutoConnections;
    if (desiredPscAutoConnectionsValue != null) {
      map['desiredPscAutoConnections'] = Input.mapOptionalInputValue<
              List<InstanceDesiredPscAutoConnection>,
              List<Map<String, dynamic>>>(
          desiredPscAutoConnectionsValue,
          (value) => Input.encodeList<InstanceDesiredPscAutoConnection,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final engineConfigsValue = engineConfigs;
    if (engineConfigsValue != null) {
      map['engineConfigs'] = engineConfigsValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] =
          Input.mapOptionalInputValue<InstanceGcsSource, Map<String, dynamic>>(
              gcsSourceValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              InstanceMaintenancePolicy2, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    final managedBackupSourceValue = managedBackupSource;
    if (managedBackupSourceValue != null) {
      map['managedBackupSource'] = Input.mapOptionalInputValue<
              InstanceManagedBackupSource, Map<String, dynamic>>(
          managedBackupSourceValue, (value) => value.toMap());
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final persistenceConfigValue = persistenceConfig;
    if (persistenceConfigValue != null) {
      map['persistenceConfig'] = Input.mapOptionalInputValue<
              InstancePersistenceConfig, Map<String, dynamic>>(
          persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    map['shardCount'] = shardCount;
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] = transitEncryptionModeValue;
    }
    final zoneDistributionConfigValue = zoneDistributionConfig;
    if (zoneDistributionConfigValue != null) {
      map['zoneDistributionConfig'] = Input.mapOptionalInputValue<
              InstanceZoneDistributionConfig, Map<String, dynamic>>(
          zoneDistributionConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs10.fromMap(Map<String, dynamic> map) {
    return InstanceArgs10(
      authorizationMode:
          Input.asOptionalInput<String>(map['authorizationMode']),
      automatedBackupConfig:
          Input.asOptionalInput<InstanceAutomatedBackupConfig>(
              map['automatedBackupConfig']),
      crossInstanceReplicationConfig:
          Input.asOptionalInput<InstanceCrossInstanceReplicationConfig>(
              map['crossInstanceReplicationConfig']),
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      desiredAutoCreatedEndpoints:
          Input.asOptionalInput<List<InstanceDesiredAutoCreatedEndpoint>>(
              map['desiredAutoCreatedEndpoints']),
      desiredPscAutoConnections:
          Input.asOptionalInput<List<InstanceDesiredPscAutoConnection>>(
              map['desiredPscAutoConnections']),
      engineConfigs:
          Input.asOptionalInput<Map<String, String>>(map['engineConfigs']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      gcsSource: Input.asOptionalInput<InstanceGcsSource>(map['gcsSource']),
      instanceId: Input.asInput<String>(map['instanceId']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      maintenancePolicy: Input.asOptionalInput<InstanceMaintenancePolicy2>(
          map['maintenancePolicy']),
      maintenanceVersion:
          Input.asOptionalInput<String>(map['maintenanceVersion']),
      managedBackupSource: Input.asOptionalInput<InstanceManagedBackupSource>(
          map['managedBackupSource']),
      mode: Input.asOptionalInput<String>(map['mode']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      persistenceConfig: Input.asOptionalInput<InstancePersistenceConfig>(
          map['persistenceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      shardCount: Input.asInput<int>(map['shardCount']),
      transitEncryptionMode:
          Input.asOptionalInput<String>(map['transitEncryptionMode']),
      zoneDistributionConfig:
          Input.asOptionalInput<InstanceZoneDistributionConfig>(
              map['zoneDistributionConfig']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_automated_backup_config/cluster_automated_backup_config.dart';
import '../cluster_cross_cluster_replication_config/cluster_cross_cluster_replication_config.dart';
import '../cluster_gcs_source/cluster_gcs_source.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy3.dart';
import '../cluster_managed_backup_source/cluster_managed_backup_source.dart';
import '../cluster_persistence_config/cluster_persistence_config.dart';
import '../cluster_psc_config/cluster_psc_config2.dart';
import '../cluster_zone_distribution_config/cluster_zone_distribution_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs6 {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  final Input<String>? authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  final Input<ClusterAutomatedBackupConfig>? automatedBackupConfig;

  /// Cross cluster replication config
  /// Structure is documented below.
  final Input<ClusterCrossClusterReplicationConfig>?
      crossClusterReplicationConfig;

  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  final Input<bool>? deletionProtectionEnabled;

  /// Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// Structure is documented below.
  final Input<ClusterGcsSource>? gcsSource;

  /// The KMS key used to encrypt the at-rest data of the cluster.
  final Input<String>? kmsKey;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final Input<ClusterMaintenancePolicy3>? maintenancePolicy;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the<span pulumi-lang-nodejs=" availableMaintenanceVersions " pulumi-lang-dotnet=" AvailableMaintenanceVersions " pulumi-lang-go=" availableMaintenanceVersions " pulumi-lang-python=" available_maintenance_versions " pulumi-lang-yaml=" availableMaintenanceVersions " pulumi-lang-java=" availableMaintenanceVersions "> available_maintenance_versions </span>field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final Input<String>? maintenanceVersion;

  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  final Input<ClusterManagedBackupSource>? managedBackupSource;

  /// Unique name of the resource in this scope including project and location using the form:
  /// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
  final Input<String>? name;

  /// The nodeType for the Redis cluster.
  /// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHMEM_XLARGE`, `REDIS_STANDARD_SMALL`.
  final Input<String>? nodeType;

  /// Persistence config (RDB, AOF) for the cluster.
  /// Structure is documented below.
  final Input<ClusterPersistenceConfig>? persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  final Input<List<ClusterPscConfig2>>? pscConfigs;

  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  final Input<Map<String, String>>? redisConfigs;

  /// The name of the region of the Redis cluster.
  final Input<String>? region;

  /// Optional. The number of replica nodes per shard.
  final Input<int>? replicaCount;

  /// Required. Number of shards for the Redis cluster.
  final Input<int> shardCount;

  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  final Input<String>? transitEncryptionMode;

  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  final Input<ClusterZoneDistributionConfig>? zoneDistributionConfig;

  ClusterArgs6({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.crossClusterReplicationConfig,
    this.deletionProtectionEnabled,
    this.gcsSource,
    this.kmsKey,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.name,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.pscConfigs,
    this.redisConfigs,
    this.region,
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
              ClusterAutomatedBackupConfig, Map<String, dynamic>>(
          automatedBackupConfigValue, (value) => value.toMap());
    }
    final crossClusterReplicationConfigValue = crossClusterReplicationConfig;
    if (crossClusterReplicationConfigValue != null) {
      map['crossClusterReplicationConfig'] = Input.mapOptionalInputValue<
              ClusterCrossClusterReplicationConfig, Map<String, dynamic>>(
          crossClusterReplicationConfigValue, (value) => value.toMap());
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] =
          Input.mapOptionalInputValue<ClusterGcsSource, Map<String, dynamic>>(
              gcsSourceValue, (value) => value.toMap());
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              ClusterMaintenancePolicy3, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    final managedBackupSourceValue = managedBackupSource;
    if (managedBackupSourceValue != null) {
      map['managedBackupSource'] = Input.mapOptionalInputValue<
              ClusterManagedBackupSource, Map<String, dynamic>>(
          managedBackupSourceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final persistenceConfigValue = persistenceConfig;
    if (persistenceConfigValue != null) {
      map['persistenceConfig'] = Input.mapOptionalInputValue<
              ClusterPersistenceConfig, Map<String, dynamic>>(
          persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigsValue = pscConfigs;
    if (pscConfigsValue != null) {
      map['pscConfigs'] = Input.mapOptionalInputValue<List<ClusterPscConfig2>,
              List<Map<String, dynamic>>>(
          pscConfigsValue,
          (value) => Input.encodeList<ClusterPscConfig2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final redisConfigsValue = redisConfigs;
    if (redisConfigsValue != null) {
      map['redisConfigs'] = redisConfigsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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
              ClusterZoneDistributionConfig, Map<String, dynamic>>(
          zoneDistributionConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs6.fromMap(Map<String, dynamic> map) {
    return ClusterArgs6(
      authorizationMode:
          Input.asOptionalInput<String>(map['authorizationMode']),
      automatedBackupConfig:
          Input.asOptionalInput<ClusterAutomatedBackupConfig>(
              map['automatedBackupConfig']),
      crossClusterReplicationConfig:
          Input.asOptionalInput<ClusterCrossClusterReplicationConfig>(
              map['crossClusterReplicationConfig']),
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      gcsSource: Input.asOptionalInput<ClusterGcsSource>(map['gcsSource']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      maintenancePolicy: Input.asOptionalInput<ClusterMaintenancePolicy3>(
          map['maintenancePolicy']),
      maintenanceVersion:
          Input.asOptionalInput<String>(map['maintenanceVersion']),
      managedBackupSource: Input.asOptionalInput<ClusterManagedBackupSource>(
          map['managedBackupSource']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      persistenceConfig: Input.asOptionalInput<ClusterPersistenceConfig>(
          map['persistenceConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConfigs:
          Input.asOptionalInput<List<ClusterPscConfig2>>(map['pscConfigs']),
      redisConfigs:
          Input.asOptionalInput<Map<String, String>>(map['redisConfigs']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      shardCount: Input.asInput<int>(map['shardCount']),
      transitEncryptionMode:
          Input.asOptionalInput<String>(map['transitEncryptionMode']),
      zoneDistributionConfig:
          Input.asOptionalInput<ClusterZoneDistributionConfig>(
              map['zoneDistributionConfig']),
    );
  }
}

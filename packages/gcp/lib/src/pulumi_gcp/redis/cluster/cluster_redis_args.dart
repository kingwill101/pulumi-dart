// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_automated_backup_config/cluster_automated_backup_config.dart';
import '../cluster_cross_cluster_replication_config/cluster_cross_cluster_replication_config.dart';
import '../cluster_gcs_source/cluster_gcs_source.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy_redis.dart';
import '../cluster_managed_backup_source/cluster_managed_backup_source.dart';
import '../cluster_persistence_config/cluster_persistence_config.dart';
import '../cluster_psc_config/cluster_psc_config_redis.dart';
import '../cluster_zone_distribution_config/cluster_zone_distribution_config.dart';

/// The set of arguments for Cluster.
class ClusterRedisArgs {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  final pulumi.Input<String>? authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupConfig>? automatedBackupConfig;

  /// Cross cluster replication config
  /// Structure is documented below.
  final pulumi.Input<ClusterCrossClusterReplicationConfig>?
      crossClusterReplicationConfig;

  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  final pulumi.Input<bool>? deletionProtectionEnabled;

  /// Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcsSource>? gcsSource;

  /// The KMS key used to encrypt the at-rest data of the cluster.
  final pulumi.Input<String>? kmsKey;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicyRedis>? maintenancePolicy;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String>? maintenanceVersion;

  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  final pulumi.Input<ClusterManagedBackupSource>? managedBackupSource;

  /// Unique name of the resource in this scope including project and location using the form:
  /// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
  final pulumi.Input<String>? name;

  /// The nodeType for the Redis cluster.
  /// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHMEM_XLARGE`, `REDIS_STANDARD_SMALL`.
  final pulumi.Input<String>? nodeType;

  /// Persistence config (RDB, AOF) for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterPersistenceConfig>? persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterPscConfigRedis>>? pscConfigs;

  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  final pulumi.Input<Map<String, String>>? redisConfigs;

  /// The name of the region of the Redis cluster.
  final pulumi.Input<String>? region;

  /// Optional. The number of replica nodes per shard.
  final pulumi.Input<int>? replicaCount;

  /// Required. Number of shards for the Redis cluster.
  final pulumi.Input<int> shardCount;

  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  final pulumi.Input<String>? transitEncryptionMode;

  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterZoneDistributionConfig>? zoneDistributionConfig;

  ClusterRedisArgs({
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
      map['automatedBackupConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterAutomatedBackupConfig, Map<String, dynamic>>(
          automatedBackupConfigValue, (value) => value.toMap());
    }
    final crossClusterReplicationConfigValue = crossClusterReplicationConfig;
    if (crossClusterReplicationConfigValue != null) {
      map['crossClusterReplicationConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterCrossClusterReplicationConfig, Map<String, dynamic>>(
          crossClusterReplicationConfigValue, (value) => value.toMap());
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = pulumi.Input.mapOptionalInputValue<ClusterGcsSource,
          Map<String, dynamic>>(gcsSourceValue, (value) => value.toMap());
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
      map['maintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              ClusterMaintenancePolicyRedis, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    final managedBackupSourceValue = managedBackupSource;
    if (managedBackupSourceValue != null) {
      map['managedBackupSource'] = pulumi.Input.mapOptionalInputValue<
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
      map['persistenceConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterPersistenceConfig, Map<String, dynamic>>(
          persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigsValue = pscConfigs;
    if (pscConfigsValue != null) {
      map['pscConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterPscConfigRedis>, List<Map<String, dynamic>>>(
          pscConfigsValue,
          (value) => pulumi.Input.encodeList<ClusterPscConfigRedis,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['zoneDistributionConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterZoneDistributionConfig, Map<String, dynamic>>(
          zoneDistributionConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterRedisArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRedisArgs(
      authorizationMode:
          pulumi.Input.asOptionalInput<String>(map['authorizationMode']),
      automatedBackupConfig:
          pulumi.Input.asOptionalInput<ClusterAutomatedBackupConfig>(
              map['automatedBackupConfig']),
      crossClusterReplicationConfig:
          pulumi.Input.asOptionalInput<ClusterCrossClusterReplicationConfig>(
              map['crossClusterReplicationConfig']),
      deletionProtectionEnabled:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      gcsSource:
          pulumi.Input.asOptionalInput<ClusterGcsSource>(map['gcsSource']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      maintenancePolicy:
          pulumi.Input.asOptionalInput<ClusterMaintenancePolicyRedis>(
              map['maintenancePolicy']),
      maintenanceVersion:
          pulumi.Input.asOptionalInput<String>(map['maintenanceVersion']),
      managedBackupSource:
          pulumi.Input.asOptionalInput<ClusterManagedBackupSource>(
              map['managedBackupSource']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeType: pulumi.Input.asOptionalInput<String>(map['nodeType']),
      persistenceConfig: pulumi.Input.asOptionalInput<ClusterPersistenceConfig>(
          map['persistenceConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscConfigs: pulumi.Input.asOptionalInput<List<ClusterPscConfigRedis>>(
          map['pscConfigs']),
      redisConfigs: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['redisConfigs']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicaCount: pulumi.Input.asOptionalInput<int>(map['replicaCount']),
      shardCount: pulumi.Input.asInput<int>(map['shardCount']),
      transitEncryptionMode:
          pulumi.Input.asOptionalInput<String>(map['transitEncryptionMode']),
      zoneDistributionConfig:
          pulumi.Input.asOptionalInput<ClusterZoneDistributionConfig>(
              map['zoneDistributionConfig']),
    );
  }
}

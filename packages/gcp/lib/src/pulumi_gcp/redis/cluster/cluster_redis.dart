import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_automated_backup_config/cluster_automated_backup_config.dart';
import '../cluster_cross_cluster_replication_config/cluster_cross_cluster_replication_config.dart';
import '../cluster_discovery_endpoint/cluster_discovery_endpoint.dart';
import '../cluster_gcs_source/cluster_gcs_source.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy_redis.dart';
import '../cluster_maintenance_schedule/cluster_maintenance_schedule.dart';
import '../cluster_managed_backup_source/cluster_managed_backup_source.dart';
import '../cluster_managed_server_ca/cluster_managed_server_ca.dart';
import '../cluster_persistence_config/cluster_persistence_config.dart';
import '../cluster_psc_config/cluster_psc_config_redis.dart';
import '../cluster_psc_connection/cluster_psc_connection.dart';
import '../cluster_psc_service_attachment/cluster_psc_service_attachment.dart';
import '../cluster_state_info/cluster_state_info.dart';
import '../cluster_zone_distribution_config/cluster_zone_distribution_config.dart';
import 'cluster_redis_args.dart';

/// ## Example Usage
///
/// ### Redis Cluster Ha With Labels
///
///
///
/// ### Redis Cluster Ha
///
///
///
/// ### Redis Cluster Ha Single Zone
///
///
///
/// ### Redis Cluster Secondary
///
///
///
/// ### Redis Cluster Rdb
///
///
///
/// ### Redis Cluster Aof
///
///
///
/// ### Redis Cluster Cmek
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/clusters/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default projects/{{project}}/locations/{{region}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/cluster:Cluster default {{name}}
/// ```
class ClusterRedis extends pulumi.CustomResource {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  late final pulumi.Output<String?> authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAutomatedBackupConfig?> automatedBackupConfig;

  /// This field is used to determine the available maintenance versions for the self service update.
  late final pulumi.Output<List<String>> availableMaintenanceVersions;

  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  late final pulumi.Output<String> backupCollection;

  /// The timestamp associated with the cluster creation request. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Cross cluster replication config
  /// Structure is documented below.
  late final pulumi.Output<ClusterCrossClusterReplicationConfig>
      crossClusterReplicationConfig;

  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  late final pulumi.Output<bool?> deletionProtectionEnabled;

  /// Output only. Endpoints created on each given network,
  /// for Redis clients to connect to the cluster.
  /// Currently only one endpoint is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterDiscoveryEndpoint>> discoveryEndpoints;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This field represents the actual maintenance version of the cluster.
  late final pulumi.Output<String> effectiveMaintenanceVersion;

  /// Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// Structure is documented below.
  late final pulumi.Output<ClusterGcsSource?> gcsSource;

  /// The KMS key used to encrypt the at-rest data of the cluster.
  late final pulumi.Output<String?> kmsKey;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  late final pulumi.Output<ClusterMaintenancePolicyRedis?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterMaintenanceSchedule>>
      maintenanceSchedules;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  late final pulumi.Output<String?> maintenanceVersion;

  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  late final pulumi.Output<ClusterManagedBackupSource?> managedBackupSource;

  /// Cluster's Certificate Authority. This field will only be populated if Redis Cluster's transit_encryption_mode is TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterManagedServerCa>> managedServerCas;

  /// Unique name of the resource in this scope including project and location using the form:
  /// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
  late final pulumi.Output<String> name;

  /// The nodeType for the Redis cluster.
  /// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHMEM_XLARGE`, `REDIS_STANDARD_SMALL`.
  late final pulumi.Output<String> nodeType;

  /// Persistence config (RDB, AOF) for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterPersistenceConfig> persistenceConfig;

  /// Output only. Redis memory precise size in GB for the entire cluster.
  late final pulumi.Output<double> preciseSizeGb;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscConfigRedis>?> pscConfigs;

  /// Output only. PSC connections for discovery of the cluster topology and accessing the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscConnection>> pscConnections;

  /// Service attachment details to configure Psc connections.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterPscServiceAttachment>>
      pscServiceAttachments;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  late final pulumi.Output<Map<String, String>?> redisConfigs;

  /// The name of the region of the Redis cluster.
  late final pulumi.Output<String> region;

  /// Optional. The number of replica nodes per shard.
  late final pulumi.Output<int?> replicaCount;

  /// Required. Number of shards for the Redis cluster.
  late final pulumi.Output<int> shardCount;

  /// Output only. Redis memory size in GB for the entire cluster.
  late final pulumi.Output<int> sizeGb;

  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  late final pulumi.Output<String> state;

  /// Output only. Additional information about the current state of the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterStateInfo>> stateInfos;

  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  late final pulumi.Output<String?> transitEncryptionMode;

  /// System assigned, unique identifier for the cluster.
  late final pulumi.Output<String> uid;

  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterZoneDistributionConfig>
      zoneDistributionConfig;

  ClusterRedis(
    String name, {
    ClusterRedisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:redis/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationMode = registerOutput<String?>('authorizationMode');
    this.automatedBackupConfig =
        registerOutput<ClusterAutomatedBackupConfig?>('automatedBackupConfig');
    this.availableMaintenanceVersions =
        registerOutput<List<String>>('availableMaintenanceVersions');
    this.backupCollection = registerOutput<String>('backupCollection');
    this.createTime = registerOutput<String>('createTime');
    this.crossClusterReplicationConfig =
        registerOutput<ClusterCrossClusterReplicationConfig>(
            'crossClusterReplicationConfig');
    this.deletionProtectionEnabled =
        registerOutput<bool?>('deletionProtectionEnabled');
    this.discoveryEndpoints =
        registerOutput<List<ClusterDiscoveryEndpoint>>('discoveryEndpoints');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveMaintenanceVersion =
        registerOutput<String>('effectiveMaintenanceVersion');
    this.gcsSource = registerOutput<ClusterGcsSource?>('gcsSource');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maintenancePolicy =
        registerOutput<ClusterMaintenancePolicyRedis?>('maintenancePolicy');
    this.maintenanceSchedules =
        registerOutput<List<ClusterMaintenanceSchedule>>(
            'maintenanceSchedules');
    this.maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    this.managedBackupSource =
        registerOutput<ClusterManagedBackupSource?>('managedBackupSource');
    this.managedServerCas =
        registerOutput<List<ClusterManagedServerCa>>('managedServerCas');
    this.name = registerOutput<String>('name');
    this.nodeType = registerOutput<String>('nodeType');
    this.persistenceConfig =
        registerOutput<ClusterPersistenceConfig>('persistenceConfig');
    this.preciseSizeGb = registerOutput<double>('preciseSizeGb');
    this.project = registerOutput<String>('project');
    this.pscConfigs =
        registerOutput<List<ClusterPscConfigRedis>?>('pscConfigs');
    this.pscConnections =
        registerOutput<List<ClusterPscConnection>>('pscConnections');
    this.pscServiceAttachments =
        registerOutput<List<ClusterPscServiceAttachment>>(
            'pscServiceAttachments');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.redisConfigs = registerOutput<Map<String, String>?>('redisConfigs');
    this.region = registerOutput<String>('region');
    this.replicaCount = registerOutput<int?>('replicaCount');
    this.shardCount = registerOutput<int>('shardCount');
    this.sizeGb = registerOutput<int>('sizeGb');
    this.state = registerOutput<String>('state');
    this.stateInfos = registerOutput<List<ClusterStateInfo>>('stateInfos');
    this.transitEncryptionMode =
        registerOutput<String?>('transitEncryptionMode');
    this.uid = registerOutput<String>('uid');
    this.zoneDistributionConfig =
        registerOutput<ClusterZoneDistributionConfig>('zoneDistributionConfig');
  }
}

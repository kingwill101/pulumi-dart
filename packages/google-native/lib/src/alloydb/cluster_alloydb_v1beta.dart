import 'package:pulumi/pulumi.dart' as pulumi;
import 'automated_backup_policy_response_alloydb_v1beta.dart';
import 'backup_source_response_alloydb_v1beta.dart';
import 'cluster_alloydb_v1beta_args.dart';
import 'continuous_backup_config_response_alloydb_v1beta.dart';
import 'continuous_backup_info_response_alloydb_v1beta.dart';
import 'encryption_config_response_alloydb_v1beta.dart';
import 'encryption_info_response_alloydb_v1beta.dart';
import 'migration_source_response_alloydb_v1beta.dart';
import 'network_config_response_alloydb_v1beta.dart';
import 'primary_config_response_alloydb_v1beta.dart';
import 'secondary_config_response_alloydb_v1beta.dart';
import 'ssl_config_response_alloydb_v1beta.dart';
import 'user_password_response_alloydb_v1beta.dart';

/// Creates a new Cluster in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ClusterAlloydbV1beta extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final pulumi.Output<Map<String, String>> annotations;
  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  late final pulumi.Output<AutomatedBackupPolicyResponseAlloydbV1beta> automatedBackupPolicy;
  /// Cluster created from backup.
  late final pulumi.Output<BackupSourceResponseAlloydbV1beta> backupSource;
  /// Required. ID of the requesting object.
  late final pulumi.Output<String> clusterId;
  /// The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  late final pulumi.Output<String> clusterType;
  /// Optional. Continuous backup configuration for this cluster.
  late final pulumi.Output<ContinuousBackupConfigResponseAlloydbV1beta> continuousBackupConfig;
  /// Continuous backup properties for this cluster.
  late final pulumi.Output<ContinuousBackupInfoResponseAlloydbV1beta> continuousBackupInfo;
  /// Create time stamp
  late final pulumi.Output<String> createTime;
  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  late final pulumi.Output<String> databaseVersion;
  /// Delete time stamp
  late final pulumi.Output<String> deleteTime;
  /// User-settable and human-readable display name for the Cluster.
  late final pulumi.Output<String> displayName;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  late final pulumi.Output<EncryptionConfigResponseAlloydbV1beta> encryptionConfig;
  /// The encryption information for the cluster.
  late final pulumi.Output<EncryptionInfoResponseAlloydbV1beta> encryptionInfo;
  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;
  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  late final pulumi.Output<UserPasswordResponseAlloydbV1beta> initialUser;
  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Cluster created via DMS migration.
  late final pulumi.Output<MigrationSourceResponseAlloydbV1beta> migrationSource;
  /// The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  late final pulumi.Output<String> name;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  late final pulumi.Output<String> network;
  late final pulumi.Output<NetworkConfigResponseAlloydbV1beta> networkConfig;
  /// Cross Region replication config specific to PRIMARY cluster.
  late final pulumi.Output<PrimaryConfigResponseAlloydbV1beta> primaryConfig;
  late final pulumi.Output<String> project;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Cross Region replication config specific to SECONDARY cluster.
  late final pulumi.Output<SecondaryConfigResponseAlloydbV1beta> secondaryConfig;
  /// SSL configuration for this AlloyDB cluster.
  late final pulumi.Output<SslConfigResponseAlloydbV1beta> sslConfig;
  /// The current serving state of the cluster.
  late final pulumi.Output<String> state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final pulumi.Output<String> uid;
  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ClusterAlloydbV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterAlloydbV1beta]. {@macro pulumi_alloydb_v1beta_cluster_alloydb_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterAlloydbV1beta(
    String name, {
    ClusterAlloydbV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1beta:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.automatedBackupPolicy = registerOutput<AutomatedBackupPolicyResponseAlloydbV1beta>('automatedBackupPolicy');
    this.backupSource = registerOutput<BackupSourceResponseAlloydbV1beta>('backupSource');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterType = registerOutput<String>('clusterType');
    this.continuousBackupConfig = registerOutput<ContinuousBackupConfigResponseAlloydbV1beta>('continuousBackupConfig');
    this.continuousBackupInfo = registerOutput<ContinuousBackupInfoResponseAlloydbV1beta>('continuousBackupInfo');
    this.createTime = registerOutput<String>('createTime');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionConfig = registerOutput<EncryptionConfigResponseAlloydbV1beta>('encryptionConfig');
    this.encryptionInfo = registerOutput<EncryptionInfoResponseAlloydbV1beta>('encryptionInfo');
    this.etag = registerOutput<String>('etag');
    this.initialUser = registerOutput<UserPasswordResponseAlloydbV1beta>('initialUser');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.migrationSource = registerOutput<MigrationSourceResponseAlloydbV1beta>('migrationSource');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkConfig = registerOutput<NetworkConfigResponseAlloydbV1beta>('networkConfig');
    this.primaryConfig = registerOutput<PrimaryConfigResponseAlloydbV1beta>('primaryConfig');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.secondaryConfig = registerOutput<SecondaryConfigResponseAlloydbV1beta>('secondaryConfig');
    this.sslConfig = registerOutput<SslConfigResponseAlloydbV1beta>('sslConfig');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

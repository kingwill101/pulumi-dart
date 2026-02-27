import 'package:pulumi/pulumi.dart' hide Config;
import 'automated_backup_policy_response2.dart';
import 'backup_source_response2.dart';
import 'cluster_args2.dart';
import 'continuous_backup_config_response2.dart';
import 'continuous_backup_info_response2.dart';
import 'encryption_config_response2.dart';
import 'encryption_info_response2.dart';
import 'migration_source_response2.dart';
import 'network_config_response2.dart';
import 'primary_config_response2.dart';
import 'psc_config_response.dart';
import 'secondary_config_response2.dart';
import 'ssl_config_response2.dart';
import 'user_password_response2.dart';

/// Creates a new Cluster in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Cluster2 extends CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final Output<Map<String, String>> annotations;

  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  late final Output<AutomatedBackupPolicyResponse2> automatedBackupPolicy;

  /// Cluster created from backup.
  late final Output<BackupSourceResponse2> backupSource;

  /// Required. ID of the requesting object.
  late final Output<String> clusterId;

  /// The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  late final Output<String> clusterType;

  /// Optional. Continuous backup configuration for this cluster.
  late final Output<ContinuousBackupConfigResponse2> continuousBackupConfig;

  /// Continuous backup properties for this cluster.
  late final Output<ContinuousBackupInfoResponse2> continuousBackupInfo;

  /// Create time stamp
  late final Output<String> createTime;

  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  late final Output<String> databaseVersion;

  /// Delete time stamp
  late final Output<String> deleteTime;

  /// User-settable and human-readable display name for the Cluster.
  late final Output<String> displayName;

  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  late final Output<EncryptionConfigResponse2> encryptionConfig;

  /// The encryption information for the cluster.
  late final Output<EncryptionInfoResponse2> encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String> etag;

  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  late final Output<UserPasswordResponse2> initialUser;

  /// Labels as key value pairs
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Cluster created via DMS migration.
  late final Output<MigrationSourceResponse2> migrationSource;

  /// The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  late final Output<String> name;

  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  late final Output<String> network;
  late final Output<NetworkConfigResponse2> networkConfig;

  /// Cross Region replication config specific to PRIMARY cluster.
  late final Output<PrimaryConfigResponse2> primaryConfig;
  late final Output<String> project;

  /// Optional. The configuration for Private Service Connect (PSC) for the cluster.
  late final Output<PscConfigResponse> pscConfig;

  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// Cross Region replication config specific to SECONDARY cluster.
  late final Output<SecondaryConfigResponse2> secondaryConfig;

  /// SSL configuration for this AlloyDB cluster.
  late final Output<SslConfigResponse2> sslConfig;

  /// The current serving state of the cluster.
  late final Output<String> state;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final Output<String> uid;

  /// Update time stamp
  late final Output<String> updateTime;

  Cluster2(
    String name, {
    ClusterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1alpha:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.automatedBackupPolicy =
        registerOutput<AutomatedBackupPolicyResponse2>('automatedBackupPolicy');
    this.backupSource = registerOutput<BackupSourceResponse2>('backupSource');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterType = registerOutput<String>('clusterType');
    this.continuousBackupConfig =
        registerOutput<ContinuousBackupConfigResponse2>(
            'continuousBackupConfig');
    this.continuousBackupInfo =
        registerOutput<ContinuousBackupInfoResponse2>('continuousBackupInfo');
    this.createTime = registerOutput<String>('createTime');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionConfig =
        registerOutput<EncryptionConfigResponse2>('encryptionConfig');
    this.encryptionInfo =
        registerOutput<EncryptionInfoResponse2>('encryptionInfo');
    this.etag = registerOutput<String>('etag');
    this.initialUser = registerOutput<UserPasswordResponse2>('initialUser');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.migrationSource =
        registerOutput<MigrationSourceResponse2>('migrationSource');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkConfig =
        registerOutput<NetworkConfigResponse2>('networkConfig');
    this.primaryConfig =
        registerOutput<PrimaryConfigResponse2>('primaryConfig');
    this.project = registerOutput<String>('project');
    this.pscConfig = registerOutput<PscConfigResponse>('pscConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.secondaryConfig =
        registerOutput<SecondaryConfigResponse2>('secondaryConfig');
    this.sslConfig = registerOutput<SslConfigResponse2>('sslConfig');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

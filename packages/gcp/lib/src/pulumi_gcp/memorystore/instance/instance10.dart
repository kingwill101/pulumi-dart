import 'package:pulumi/pulumi.dart';
import '../instance_automated_backup_config/instance_automated_backup_config.dart';
import '../instance_cross_instance_replication_config/instance_cross_instance_replication_config.dart';
import '../instance_desired_auto_created_endpoint/instance_desired_auto_created_endpoint.dart';
import '../instance_desired_psc_auto_connection/instance_desired_psc_auto_connection.dart';
import '../instance_discovery_endpoint/instance_discovery_endpoint.dart';
import '../instance_endpoint/instance_endpoint.dart';
import '../instance_gcs_source/instance_gcs_source.dart';
import '../instance_maintenance_policy/instance_maintenance_policy2.dart';
import '../instance_maintenance_schedule/instance_maintenance_schedule2.dart';
import '../instance_managed_backup_source/instance_managed_backup_source.dart';
import '../instance_managed_server_ca/instance_managed_server_ca.dart';
import '../instance_node_config/instance_node_config2.dart';
import '../instance_persistence_config/instance_persistence_config.dart';
import '../instance_psc_attachment_detail/instance_psc_attachment_detail.dart';
import '../instance_psc_auto_connection/instance_psc_auto_connection.dart';
import '../instance_state_info/instance_state_info.dart';
import '../instance_zone_distribution_config/instance_zone_distribution_config.dart';
import 'instance_args10.dart';

/// A Google Cloud Memorystore instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/valkey/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memorystore/docs/valkey/create-instances)
///
/// ## Example Usage
///
/// ### Memorystore Instance Basic
///
///
///
/// ### Memorystore Instance Full
///
///
///
/// ### Memorystore Instance Persistence Aof
///
///
///
/// ### Memorystore Instance Secondary Instance
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{location}}/{{instance_id}}`
///
/// * `{{location}}/{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default {{project}}/{{location}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instance:Instance default {{location}}/{{instance_id}}
/// ```
class Instance10 extends CustomResource {
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH
  late final Output<String> authorizationMode;

  /// The automated backup config for a instance.
  /// Structure is documented below.
  late final Output<InstanceAutomatedBackupConfig?> automatedBackupConfig;

  /// This field is used to determine the available maintenance versions for the self service update.
  late final Output<List<String>> availableMaintenanceVersions;

  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  late final Output<String> backupCollection;

  /// Output only. Creation timestamp of the instance.
  late final Output<String> createTime;

  /// Cross instance replication config
  /// Structure is documented below.
  late final Output<InstanceCrossInstanceReplicationConfig>
      crossInstanceReplicationConfig;

  /// Optional. If set to true deletion of the instance will fail.
  late final Output<bool?> deletionProtectionEnabled;

  /// Immutable. User inputs for the auto-created endpoints connections.
  late final Output<List<InstanceDesiredAutoCreatedEndpoint>?>
      desiredAutoCreatedEndpoints;

  /// `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  late final Output<List<InstanceDesiredPscAutoConnection>?>
      desiredPscAutoConnections;

  /// (Deprecated)
  /// Deprecated. Output only. Endpoints clients can connect to the instance through.
  /// Structure is documented below.
  late final Output<List<InstanceDiscoveryEndpoint>> discoveryEndpoints;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// This field represents the actual maintenance version of the cluster.
  late final Output<String> effectiveMaintenanceVersion;

  /// Endpoints for the instance.
  /// Structure is documented below.
  late final Output<List<InstanceEndpoint>> endpoints;

  /// Optional. User-provided engine configurations for the instance.
  late final Output<Map<String, String>?> engineConfigs;

  /// Optional. Engine version of the instance.
  late final Output<String> engineVersion;

  /// GCS source for the instance.
  /// Structure is documented below.
  late final Output<InstanceGcsSource?> gcsSource;

  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  late final Output<String> instanceId;

  /// The KMS key used to encrypt the at-rest data of the cluster
  late final Output<String?> kmsKey;

  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  late final Output<String> location;

  /// Maintenance policy for a cluster
  /// Structure is documented below.
  late final Output<InstanceMaintenancePolicy2?> maintenancePolicy;

  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  late final Output<List<InstanceMaintenanceSchedule2>> maintenanceSchedules;

  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  late final Output<String?> maintenanceVersion;

  /// Managed backup source for the instance.
  /// Structure is documented below.
  late final Output<InstanceManagedBackupSource?> managedBackupSource;

  /// Instance's Certificate Authority. This field will only be populated if instance's transit_encryption_mode is SERVER_AUTHENTICATION
  /// Structure is documented below.
  late final Output<List<InstanceManagedServerCa>> managedServerCas;

  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  late final Output<String> mode;

  /// Identifier. Unique name of the instance.
  /// Format: projects/{project}/locations/{location}/instances/{instance}
  late final Output<String> name;

  /// Represents configuration for nodes of the instance.
  /// Structure is documented below.
  late final Output<List<InstanceNodeConfig2>> nodeConfigs;

  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// HIGHMEM_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  late final Output<String> nodeType;

  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  late final Output<InstancePersistenceConfig> persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configuration of a service attachment of the cluster, for creating PSC connections.
  /// Structure is documented below.
  late final Output<List<InstancePscAttachmentDetail>> pscAttachmentDetails;

  /// (Deprecated)
  /// Output only. User inputs and resource details of the auto-created PSC connections.
  /// Structure is documented below.
  late final Output<List<InstancePscAutoConnection>> pscAutoConnections;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  late final Output<int> replicaCount;

  /// Required. Number of shards for the instance.
  late final Output<int> shardCount;

  /// Output only. Current state of the instance.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  late final Output<String> state;

  /// Additional information about the state of the instance.
  /// Structure is documented below.
  late final Output<List<InstanceStateInfo>> stateInfos;

  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  late final Output<String> transitEncryptionMode;

  /// Output only. System assigned, unique identifier for the instance.
  late final Output<String> uid;

  /// Output only. Latest update timestamp of the instance.
  late final Output<String> updateTime;

  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  late final Output<InstanceZoneDistributionConfig> zoneDistributionConfig;

  Instance10(
    String name, {
    InstanceArgs10? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizationMode = registerOutput<String>('authorizationMode');
    this.automatedBackupConfig =
        registerOutput<InstanceAutomatedBackupConfig?>('automatedBackupConfig');
    this.availableMaintenanceVersions =
        registerOutput<List<String>>('availableMaintenanceVersions');
    this.backupCollection = registerOutput<String>('backupCollection');
    this.createTime = registerOutput<String>('createTime');
    this.crossInstanceReplicationConfig =
        registerOutput<InstanceCrossInstanceReplicationConfig>(
            'crossInstanceReplicationConfig');
    this.deletionProtectionEnabled =
        registerOutput<bool?>('deletionProtectionEnabled');
    this.desiredAutoCreatedEndpoints =
        registerOutput<List<InstanceDesiredAutoCreatedEndpoint>?>(
            'desiredAutoCreatedEndpoints');
    this.desiredPscAutoConnections =
        registerOutput<List<InstanceDesiredPscAutoConnection>?>(
            'desiredPscAutoConnections');
    this.discoveryEndpoints =
        registerOutput<List<InstanceDiscoveryEndpoint>>('discoveryEndpoints');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.effectiveMaintenanceVersion =
        registerOutput<String>('effectiveMaintenanceVersion');
    this.endpoints = registerOutput<List<InstanceEndpoint>>('endpoints');
    this.engineConfigs = registerOutput<Map<String, String>?>('engineConfigs');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.gcsSource = registerOutput<InstanceGcsSource?>('gcsSource');
    this.instanceId = registerOutput<String>('instanceId');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenancePolicy =
        registerOutput<InstanceMaintenancePolicy2?>('maintenancePolicy');
    this.maintenanceSchedules =
        registerOutput<List<InstanceMaintenanceSchedule2>>(
            'maintenanceSchedules');
    this.maintenanceVersion = registerOutput<String?>('maintenanceVersion');
    this.managedBackupSource =
        registerOutput<InstanceManagedBackupSource?>('managedBackupSource');
    this.managedServerCas =
        registerOutput<List<InstanceManagedServerCa>>('managedServerCas');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.nodeConfigs = registerOutput<List<InstanceNodeConfig2>>('nodeConfigs');
    this.nodeType = registerOutput<String>('nodeType');
    this.persistenceConfig =
        registerOutput<InstancePersistenceConfig>('persistenceConfig');
    this.project = registerOutput<String>('project');
    this.pscAttachmentDetails =
        registerOutput<List<InstancePscAttachmentDetail>>(
            'pscAttachmentDetails');
    this.pscAutoConnections =
        registerOutput<List<InstancePscAutoConnection>>('pscAutoConnections');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.replicaCount = registerOutput<int>('replicaCount');
    this.shardCount = registerOutput<int>('shardCount');
    this.state = registerOutput<String>('state');
    this.stateInfos = registerOutput<List<InstanceStateInfo>>('stateInfos');
    this.transitEncryptionMode =
        registerOutput<String>('transitEncryptionMode');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.zoneDistributionConfig =
        registerOutput<InstanceZoneDistributionConfig>(
            'zoneDistributionConfig');
  }
}

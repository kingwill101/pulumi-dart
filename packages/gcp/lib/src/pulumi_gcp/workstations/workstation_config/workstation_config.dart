import 'package:pulumi/pulumi.dart';
import '../workstation_config_allowed_port/workstation_config_allowed_port.dart';
import '../workstation_config_condition/workstation_config_condition.dart';
import '../workstation_config_container/workstation_config_container.dart';
import '../workstation_config_encryption_key/workstation_config_encryption_key.dart';
import '../workstation_config_ephemeral_directory/workstation_config_ephemeral_directory.dart';
import '../workstation_config_host/workstation_config_host.dart';
import '../workstation_config_persistent_directory/workstation_config_persistent_directory.dart';
import '../workstation_config_readiness_check/workstation_config_readiness_check.dart';
import 'workstation_config_args.dart';

/// A set of configuration options describing how a workstation will be run. Workstation configurations are intended to be shared across multiple workstations.
///
/// To get more information about WorkstationConfig, see:
///
/// * [API documentation](https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs/create)
/// * How-to Guides
/// * [Workstations](https://cloud.google.com/workstations/docs/)
///
/// ## Example Usage
///
/// ### Workstation Config Basic
///
///
///
/// ### Workstation Config Container
///
///
///
/// ### Workstation Config Persistent Directories
///
///
///
/// ### Workstation Config Source Snapshot
///
///
///
/// ### Workstation Config Shielded Instance Config
///
///
///
/// ### Workstation Config Accelerators
///
///
///
/// ### Workstation Config Boost
///
///
///
/// ### Workstation Config Encryption Key
///
///
///
/// ### Workstation Config Allowed Ports
///
///
///
///
/// ## Import
///
/// WorkstationConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}`
///
/// * `{{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}`
///
/// * `{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}`
///
/// When using the `pulumi import` command, WorkstationConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default projects/{{project}}/locations/{{location}}/workstationClusters/{{workstation_cluster_id}}/workstationConfigs/{{workstation_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default {{project}}/{{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workstations/workstationConfig:WorkstationConfig default {{location}}/{{workstation_cluster_id}}/{{workstation_config_id}}
/// ```
class WorkstationConfig extends CustomResource {
  /// A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// Structure is documented below.
  late final Output<List<WorkstationConfigAllowedPort>> allowedPorts;

  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Status conditions describing the current resource state.
  /// Structure is documented below.
  late final Output<List<WorkstationConfigCondition>> conditions;

  /// Container that will be run for each workstation using this configuration when that workstation is started.
  /// Structure is documented below.
  late final Output<WorkstationConfigContainer> container;

  /// Time when this resource was created.
  late final Output<String> createTime;

  /// Whether this resource is in degraded mode, in which case it may require user action to restore full functionality. Details can be found in the conditions field.
  late final Output<bool> degraded;

  /// Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  late final Output<bool?> disableTcpConnections;

  /// Human-readable name for this resource.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  late final Output<bool?> enableAuditAgent;

  /// Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
  /// If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
  /// If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours.
  /// Structure is documented below.
  late final Output<WorkstationConfigEncryptionKey?> encryptionKey;

  /// Ephemeral directories which won't persist across workstation sessions.
  /// Structure is documented below.
  late final Output<List<WorkstationConfigEphemeralDirectory>>
      ephemeralDirectories;

  /// Checksum computed by the server.
  /// May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Runtime host for a workstation.
  /// Structure is documented below.
  late final Output<WorkstationConfigHost> host;

  /// How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String?> idleTimeout;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the workstation cluster config should reside.
  late final Output<String> location;

  /// Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  late final Output<int> maxUsableWorkstations;

  /// Full name of this resource.
  late final Output<String> name;

  /// Directories to persist across workstation sessions.
  /// Structure is documented below.
  late final Output<List<WorkstationConfigPersistentDirectory>>
      persistentDirectories;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  late final Output<List<WorkstationConfigReadinessCheck>?> readinessChecks;

  /// Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  late final Output<List<String>> replicaZones;

  /// How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryption_key` is set. Defaults to 12 hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String?> runningTimeout;

  /// The system-generated UID of the resource.
  late final Output<String> uid;

  /// The ID of the parent workstation cluster.
  late final Output<String> workstationClusterId;

  /// The ID to be assigned to the workstation cluster config.
  late final Output<String> workstationConfigId;

  WorkstationConfig(
    String name, {
    WorkstationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:workstations/workstationConfig:WorkstationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedPorts =
        registerOutput<List<WorkstationConfigAllowedPort>>('allowedPorts');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.conditions =
        registerOutput<List<WorkstationConfigCondition>>('conditions');
    this.container = registerOutput<WorkstationConfigContainer>('container');
    this.createTime = registerOutput<String>('createTime');
    this.degraded = registerOutput<bool>('degraded');
    this.disableTcpConnections = registerOutput<bool?>('disableTcpConnections');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableAuditAgent = registerOutput<bool?>('enableAuditAgent');
    this.encryptionKey =
        registerOutput<WorkstationConfigEncryptionKey?>('encryptionKey');
    this.ephemeralDirectories =
        registerOutput<List<WorkstationConfigEphemeralDirectory>>(
            'ephemeralDirectories');
    this.etag = registerOutput<String>('etag');
    this.host = registerOutput<WorkstationConfigHost>('host');
    this.idleTimeout = registerOutput<String?>('idleTimeout');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maxUsableWorkstations = registerOutput<int>('maxUsableWorkstations');
    this.name = registerOutput<String>('name');
    this.persistentDirectories =
        registerOutput<List<WorkstationConfigPersistentDirectory>>(
            'persistentDirectories');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.readinessChecks =
        registerOutput<List<WorkstationConfigReadinessCheck>?>(
            'readinessChecks');
    this.replicaZones = registerOutput<List<String>>('replicaZones');
    this.runningTimeout = registerOutput<String?>('runningTimeout');
    this.uid = registerOutput<String>('uid');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}

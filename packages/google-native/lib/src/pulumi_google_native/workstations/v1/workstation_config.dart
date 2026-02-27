import 'package:pulumi/pulumi.dart' hide Config;
import 'container_response3.dart';
import 'customer_encryption_key_response5.dart';
import 'host_response.dart';
import 'persistent_directory_response.dart';
import 'readiness_check_response3.dart';
import 'status_response34.dart';
import 'workstation_config_args.dart';

/// Creates a new workstation configuration.
class WorkstationConfig extends CustomResource {
  /// Optional. Client-specified annotations.
  late final Output<Map<String, String>> annotations;

  /// Status conditions describing the current resource state.
  late final Output<List<StatusResponse34>> conditions;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  late final Output<ContainerResponse3> container;

  /// Time when this workstation configuration was created.
  late final Output<String> createTime;

  /// Whether this resource is degraded, in which case it may require user action to restore full functionality. See also the conditions field.
  late final Output<bool> degraded;

  /// Time when this workstation configuration was soft-deleted.
  late final Output<String> deleteTime;

  /// Optional. Human-readable name for this workstation configuration.
  late final Output<String> displayName;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  late final Output<CustomerEncryptionKeyResponse5> encryptionKey;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Optional. Runtime host for the workstation.
  late final Output<HostResponse> host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  late final Output<String> idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Identifier. Full name of this workstation configuration.
  late final Output<String> name;

  /// Optional. Directories to persist across workstation sessions.
  late final Output<List<PersistentDirectoryResponse>> persistentDirectories;
  late final Output<String> project;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  late final Output<List<ReadinessCheckResponse3>> readinessChecks;

  /// Indicates whether this workstation configuration is currently being updated to match its intended state.
  late final Output<bool> reconciling;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  late final Output<List<String>> replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  late final Output<String> runningTimeout;

  /// A system-assigned unique identifier for this workstation configuration.
  late final Output<String> uid;

  /// Time when this workstation configuration was most recently updated.
  late final Output<String> updateTime;
  late final Output<String> workstationClusterId;

  /// Required. ID to use for the workstation configuration.
  late final Output<String> workstationConfigId;

  WorkstationConfig(
    String name, {
    WorkstationConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workstations/v1:WorkstationConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.conditions = registerOutput<List<StatusResponse34>>('conditions');
    this.container = registerOutput<ContainerResponse3>('container');
    this.createTime = registerOutput<String>('createTime');
    this.degraded = registerOutput<bool>('degraded');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionKey =
        registerOutput<CustomerEncryptionKeyResponse5>('encryptionKey');
    this.etag = registerOutput<String>('etag');
    this.host = registerOutput<HostResponse>('host');
    this.idleTimeout = registerOutput<String>('idleTimeout');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.persistentDirectories =
        registerOutput<List<PersistentDirectoryResponse>>(
            'persistentDirectories');
    this.project = registerOutput<String>('project');
    this.readinessChecks =
        registerOutput<List<ReadinessCheckResponse3>>('readinessChecks');
    this.reconciling = registerOutput<bool>('reconciling');
    this.replicaZones = registerOutput<List<String>>('replicaZones');
    this.runningTimeout = registerOutput<String>('runningTimeout');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.workstationClusterId = registerOutput<String>('workstationClusterId');
    this.workstationConfigId = registerOutput<String>('workstationConfigId');
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'container_response4.dart';
import 'customer_encryption_key_response6.dart';
import 'ephemeral_directory_response.dart';
import 'host_response2.dart';
import 'persistent_directory_response2.dart';
import 'readiness_check_response4.dart';
import 'status_response35.dart';

/// Result data returned by getWorkstationConfig.
class GetWorkstationConfigResult2 {
  /// Optional. Client-specified annotations.
  final Map<String, String> annotations;

  /// Status conditions describing the current resource state.
  final List<StatusResponse35> conditions;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  final ContainerResponse4 container;

  /// Time when this workstation configuration was created.
  final String createTime;

  /// Whether this resource is degraded, in which case it may require user action to restore full functionality. See also the conditions field.
  final bool degraded;

  /// Time when this workstation configuration was soft-deleted.
  final String deleteTime;

  /// Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final bool disableTcpConnections;

  /// Optional. Human-readable name for this workstation configuration.
  final String displayName;

  /// Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  final bool enableAuditAgent;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  final CustomerEncryptionKeyResponse6 encryptionKey;

  /// Optional. Ephemeral directories which won't persist across workstation sessions.
  final List<EphemeralDirectoryResponse> ephemeralDirectories;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. Runtime host for the workstation.
  final HostResponse2 host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  final String idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String> labels;

  /// Identifier. Full name of this workstation configuration.
  final String name;

  /// Optional. Directories to persist across workstation sessions.
  final List<PersistentDirectoryResponse2> persistentDirectories;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  final List<ReadinessCheckResponse4> readinessChecks;

  /// Indicates whether this workstation configuration is currently being updated to match its intended state.
  final bool reconciling;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final List<String> replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  final String runningTimeout;

  /// A system-assigned unique identifier for this workstation configuration.
  final String uid;

  /// Time when this workstation configuration was most recently updated.
  final String updateTime;

  GetWorkstationConfigResult2({
    required this.annotations,
    required this.conditions,
    required this.container,
    required this.createTime,
    required this.degraded,
    required this.deleteTime,
    required this.disableTcpConnections,
    required this.displayName,
    required this.enableAuditAgent,
    required this.encryptionKey,
    required this.ephemeralDirectories,
    required this.etag,
    required this.host,
    required this.idleTimeout,
    required this.labels,
    required this.name,
    required this.persistentDirectories,
    required this.readinessChecks,
    required this.reconciling,
    required this.replicaZones,
    required this.runningTimeout,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['conditions'] =
        Input.encodeList<StatusResponse35, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    map['container'] = container.toMap();
    map['createTime'] = createTime;
    map['degraded'] = degraded;
    map['deleteTime'] = deleteTime;
    map['disableTcpConnections'] = disableTcpConnections;
    map['displayName'] = displayName;
    map['enableAuditAgent'] = enableAuditAgent;
    map['encryptionKey'] = encryptionKey.toMap();
    map['ephemeralDirectories'] =
        Input.encodeList<EphemeralDirectoryResponse, Map<String, dynamic>>(
            ephemeralDirectories, (value) => value.toMap());
    map['etag'] = etag;
    map['host'] = host.toMap();
    map['idleTimeout'] = idleTimeout;
    map['labels'] = labels;
    map['name'] = name;
    map['persistentDirectories'] =
        Input.encodeList<PersistentDirectoryResponse2, Map<String, dynamic>>(
            persistentDirectories, (value) => value.toMap());
    map['readinessChecks'] =
        Input.encodeList<ReadinessCheckResponse4, Map<String, dynamic>>(
            readinessChecks, (value) => value.toMap());
    map['reconciling'] = reconciling;
    map['replicaZones'] = replicaZones;
    map['runningTimeout'] = runningTimeout;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetWorkstationConfigResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkstationConfigResult2(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      conditions: Input.decodeList<StatusResponse35>(
          map['conditions'],
          (value) =>
              StatusResponse35.fromMap((value as Map).cast<String, dynamic>())),
      container: ContainerResponse4.fromMap(
          (map['container'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      degraded: map['degraded'] as bool,
      deleteTime: map['deleteTime'] as String,
      disableTcpConnections: map['disableTcpConnections'] as bool,
      displayName: map['displayName'] as String,
      enableAuditAgent: map['enableAuditAgent'] as bool,
      encryptionKey: CustomerEncryptionKeyResponse6.fromMap(
          (map['encryptionKey'] as Map).cast<String, dynamic>()),
      ephemeralDirectories: Input.decodeList<EphemeralDirectoryResponse>(
          map['ephemeralDirectories'],
          (value) => EphemeralDirectoryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      host: HostResponse2.fromMap((map['host'] as Map).cast<String, dynamic>()),
      idleTimeout: map['idleTimeout'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      persistentDirectories: Input.decodeList<PersistentDirectoryResponse2>(
          map['persistentDirectories'],
          (value) => PersistentDirectoryResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      readinessChecks: Input.decodeList<ReadinessCheckResponse4>(
          map['readinessChecks'],
          (value) => ReadinessCheckResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] as bool,
      replicaZones: (map['replicaZones'] as List).cast<String>(),
      runningTimeout: map['runningTimeout'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

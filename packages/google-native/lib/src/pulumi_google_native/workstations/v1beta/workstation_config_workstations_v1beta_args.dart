// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_workstations_v1beta.dart';
import 'customer_encryption_key_workstations_v1beta.dart';
import 'ephemeral_directory.dart';
import 'host_workstations_v1beta.dart';
import 'persistent_directory_workstations_v1beta.dart';
import 'readiness_check_workstations_v1beta.dart';

/// The set of arguments for WorkstationConfig.
class WorkstationConfigWorkstationsV1betaArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  final pulumi.Input<ContainerWorkstationsV1beta>? container;

  /// Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final pulumi.Input<bool>? disableTcpConnections;

  /// Optional. Human-readable name for this workstation configuration.
  final pulumi.Input<String>? displayName;

  /// Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  final pulumi.Input<bool>? enableAuditAgent;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  final pulumi.Input<CustomerEncryptionKeyWorkstationsV1beta>? encryptionKey;

  /// Optional. Ephemeral directories which won't persist across workstation sessions.
  final pulumi.Input<List<EphemeralDirectory>>? ephemeralDirectories;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. Runtime host for the workstation.
  final pulumi.Input<HostWorkstationsV1beta>? host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  final pulumi.Input<String>? idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Identifier. Full name of this workstation configuration.
  final pulumi.Input<String>? name;

  /// Optional. Directories to persist across workstation sessions.
  final pulumi.Input<List<PersistentDirectoryWorkstationsV1beta>>?
      persistentDirectories;
  final pulumi.Input<String>? project;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  final pulumi.Input<List<ReadinessCheckWorkstationsV1beta>>? readinessChecks;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  final pulumi.Input<String>? runningTimeout;
  final pulumi.Input<String> workstationClusterId;

  /// Required. ID to use for the workstation configuration.
  final pulumi.Input<String> workstationConfigId;

  WorkstationConfigWorkstationsV1betaArgs({
    this.annotations,
    this.container,
    this.disableTcpConnections,
    this.displayName,
    this.enableAuditAgent,
    this.encryptionKey,
    this.ephemeralDirectories,
    this.etag,
    this.host,
    this.idleTimeout,
    this.labels,
    this.location,
    this.name,
    this.persistentDirectories,
    this.project,
    this.readinessChecks,
    this.replicaZones,
    this.runningTimeout,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final containerValue = container;
    if (containerValue != null) {
      map['container'] = pulumi.Input.mapOptionalInputValue<
          ContainerWorkstationsV1beta,
          Map<String, dynamic>>(containerValue, (value) => value.toMap());
    }
    final disableTcpConnectionsValue = disableTcpConnections;
    if (disableTcpConnectionsValue != null) {
      map['disableTcpConnections'] = disableTcpConnectionsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enableAuditAgentValue = enableAuditAgent;
    if (enableAuditAgentValue != null) {
      map['enableAuditAgent'] = enableAuditAgentValue;
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = pulumi.Input.mapOptionalInputValue<
          CustomerEncryptionKeyWorkstationsV1beta,
          Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap());
    }
    final ephemeralDirectoriesValue = ephemeralDirectories;
    if (ephemeralDirectoriesValue != null) {
      map['ephemeralDirectories'] = pulumi.Input.mapOptionalInputValue<
              List<EphemeralDirectory>, List<Map<String, dynamic>>>(
          ephemeralDirectoriesValue,
          (value) =>
              pulumi.Input.encodeList<EphemeralDirectory, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = pulumi.Input.mapOptionalInputValue<HostWorkstationsV1beta,
          Map<String, dynamic>>(hostValue, (value) => value.toMap());
    }
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final persistentDirectoriesValue = persistentDirectories;
    if (persistentDirectoriesValue != null) {
      map['persistentDirectories'] = pulumi.Input.mapOptionalInputValue<
              List<PersistentDirectoryWorkstationsV1beta>,
              List<Map<String, dynamic>>>(
          persistentDirectoriesValue,
          (value) => pulumi.Input.encodeList<
              PersistentDirectoryWorkstationsV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readinessChecksValue = readinessChecks;
    if (readinessChecksValue != null) {
      map['readinessChecks'] = pulumi.Input.mapOptionalInputValue<
              List<ReadinessCheckWorkstationsV1beta>,
              List<Map<String, dynamic>>>(
          readinessChecksValue,
          (value) => pulumi.Input.encodeList<ReadinessCheckWorkstationsV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final replicaZonesValue = replicaZones;
    if (replicaZonesValue != null) {
      map['replicaZones'] = replicaZonesValue;
    }
    final runningTimeoutValue = runningTimeout;
    if (runningTimeoutValue != null) {
      map['runningTimeout'] = runningTimeoutValue;
    }
    map['workstationClusterId'] = workstationClusterId;
    map['workstationConfigId'] = workstationConfigId;
    return map;
  }

  factory WorkstationConfigWorkstationsV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigWorkstationsV1betaArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      container: pulumi.Input.asOptionalInput<ContainerWorkstationsV1beta>(
          map['container']),
      disableTcpConnections:
          pulumi.Input.asOptionalInput<bool>(map['disableTcpConnections']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enableAuditAgent:
          pulumi.Input.asOptionalInput<bool>(map['enableAuditAgent']),
      encryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyWorkstationsV1beta>(
              map['encryptionKey']),
      ephemeralDirectories:
          pulumi.Input.asOptionalInput<List<EphemeralDirectory>>(
              map['ephemeralDirectories']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      host: pulumi.Input.asOptionalInput<HostWorkstationsV1beta>(map['host']),
      idleTimeout: pulumi.Input.asOptionalInput<String>(map['idleTimeout']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      persistentDirectories: pulumi.Input.asOptionalInput<
              List<PersistentDirectoryWorkstationsV1beta>>(
          map['persistentDirectories']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readinessChecks:
          pulumi.Input.asOptionalInput<List<ReadinessCheckWorkstationsV1beta>>(
              map['readinessChecks']),
      replicaZones:
          pulumi.Input.asOptionalInput<List<String>>(map['replicaZones']),
      runningTimeout:
          pulumi.Input.asOptionalInput<String>(map['runningTimeout']),
      workstationClusterId:
          pulumi.Input.asInput<String>(map['workstationClusterId']),
      workstationConfigId:
          pulumi.Input.asInput<String>(map['workstationConfigId']),
    );
  }
}

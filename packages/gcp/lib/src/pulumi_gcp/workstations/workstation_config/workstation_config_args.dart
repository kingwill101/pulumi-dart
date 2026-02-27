// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workstation_config_allowed_port/workstation_config_allowed_port.dart';
import '../workstation_config_container/workstation_config_container.dart';
import '../workstation_config_encryption_key/workstation_config_encryption_key.dart';
import '../workstation_config_ephemeral_directory/workstation_config_ephemeral_directory.dart';
import '../workstation_config_host/workstation_config_host.dart';
import '../workstation_config_persistent_directory/workstation_config_persistent_directory.dart';
import '../workstation_config_readiness_check/workstation_config_readiness_check.dart';

/// The set of arguments for WorkstationConfig.
class WorkstationConfigArgs {
  /// A list of port ranges specifying single ports or ranges of ports that are externally accessible in the workstation. Allowed ports must be one of 22, 80, or within range 1024-65535. If not specified defaults to ports 22, 80, and ports 1024-65535.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigAllowedPort>>? allowedPorts;

  /// Client-specified annotations. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Container that will be run for each workstation using this configuration when that workstation is started.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigContainer>? container;

  /// Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  final pulumi.Input<bool>? disableTcpConnections;

  /// Human-readable name for this resource.
  final pulumi.Input<String>? displayName;

  /// Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from Cloud Audit Logs.
  final pulumi.Input<bool>? enableAuditAgent;

  /// Encrypts resources of this workstation configuration using a customer-managed encryption key.
  /// If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata.
  /// If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk will be lost.
  /// If the encryption key is revoked, the workstation session will automatically be stopped within 7 hours.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigEncryptionKey>? encryptionKey;

  /// Ephemeral directories which won't persist across workstation sessions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigEphemeralDirectory>>?
      ephemeralDirectories;

  /// Runtime host for a workstation.
  /// Structure is documented below.
  final pulumi.Input<WorkstationConfigHost>? host;

  /// How long to wait before automatically stopping an instance that hasn't recently received any user traffic. A value of 0 indicates that this instance should never time out from idleness. Defaults to 20 minutes.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? idleTimeout;

  /// Client-specified labels that are applied to the resource and that are also propagated to the underlying Compute Engine resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the workstation cluster config should reside.
  final pulumi.Input<String> location;

  /// Maximum number of workstations under this configuration a user can have workstations.workstation.use permission on. Only enforced on CreateWorkstation API calls on the user issuing the API request.
  final pulumi.Input<int>? maxUsableWorkstations;

  /// Directories to persist across workstation sessions.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigPersistentDirectory>>?
      persistentDirectories;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Readiness checks to be performed on a workstation.
  /// Structure is documented below.
  final pulumi.Input<List<WorkstationConfigReadinessCheck>>? readinessChecks;

  /// Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`.
  /// If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;

  /// How long to wait before automatically stopping a workstation after it was started. A value of 0 indicates that workstations using this configuration should never time out from running duration. Must be greater than 0 and less than 24 hours if `encryption_key` is set. Defaults to 12 hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? runningTimeout;

  /// The ID of the parent workstation cluster.
  final pulumi.Input<String> workstationClusterId;

  /// The ID to be assigned to the workstation cluster config.
  final pulumi.Input<String> workstationConfigId;

  WorkstationConfigArgs({
    this.allowedPorts,
    this.annotations,
    this.container,
    this.disableTcpConnections,
    this.displayName,
    this.enableAuditAgent,
    this.encryptionKey,
    this.ephemeralDirectories,
    this.host,
    this.idleTimeout,
    this.labels,
    required this.location,
    this.maxUsableWorkstations,
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
    final allowedPortsValue = allowedPorts;
    if (allowedPortsValue != null) {
      map['allowedPorts'] = pulumi.Input.mapOptionalInputValue<
              List<WorkstationConfigAllowedPort>, List<Map<String, dynamic>>>(
          allowedPortsValue,
          (value) => pulumi.Input.encodeList<WorkstationConfigAllowedPort,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final containerValue = container;
    if (containerValue != null) {
      map['container'] = pulumi.Input.mapOptionalInputValue<
          WorkstationConfigContainer,
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
          WorkstationConfigEncryptionKey,
          Map<String, dynamic>>(encryptionKeyValue, (value) => value.toMap());
    }
    final ephemeralDirectoriesValue = ephemeralDirectories;
    if (ephemeralDirectoriesValue != null) {
      map['ephemeralDirectories'] = pulumi.Input.mapOptionalInputValue<
              List<WorkstationConfigEphemeralDirectory>,
              List<Map<String, dynamic>>>(
          ephemeralDirectoriesValue,
          (value) => pulumi.Input.encodeList<
              WorkstationConfigEphemeralDirectory,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = pulumi.Input.mapOptionalInputValue<WorkstationConfigHost,
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
    map['location'] = location;
    final maxUsableWorkstationsValue = maxUsableWorkstations;
    if (maxUsableWorkstationsValue != null) {
      map['maxUsableWorkstations'] = maxUsableWorkstationsValue;
    }
    final persistentDirectoriesValue = persistentDirectories;
    if (persistentDirectoriesValue != null) {
      map['persistentDirectories'] = pulumi.Input.mapOptionalInputValue<
              List<WorkstationConfigPersistentDirectory>,
              List<Map<String, dynamic>>>(
          persistentDirectoriesValue,
          (value) => pulumi.Input.encodeList<
              WorkstationConfigPersistentDirectory,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readinessChecksValue = readinessChecks;
    if (readinessChecksValue != null) {
      map['readinessChecks'] = pulumi.Input.mapOptionalInputValue<
              List<WorkstationConfigReadinessCheck>,
              List<Map<String, dynamic>>>(
          readinessChecksValue,
          (value) => pulumi.Input.encodeList<WorkstationConfigReadinessCheck,
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

  factory WorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigArgs(
      allowedPorts:
          pulumi.Input.asOptionalInput<List<WorkstationConfigAllowedPort>>(
              map['allowedPorts']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      container: pulumi.Input.asOptionalInput<WorkstationConfigContainer>(
          map['container']),
      disableTcpConnections:
          pulumi.Input.asOptionalInput<bool>(map['disableTcpConnections']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enableAuditAgent:
          pulumi.Input.asOptionalInput<bool>(map['enableAuditAgent']),
      encryptionKey:
          pulumi.Input.asOptionalInput<WorkstationConfigEncryptionKey>(
              map['encryptionKey']),
      ephemeralDirectories: pulumi.Input.asOptionalInput<
              List<WorkstationConfigEphemeralDirectory>>(
          map['ephemeralDirectories']),
      host: pulumi.Input.asOptionalInput<WorkstationConfigHost>(map['host']),
      idleTimeout: pulumi.Input.asOptionalInput<String>(map['idleTimeout']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      maxUsableWorkstations:
          pulumi.Input.asOptionalInput<int>(map['maxUsableWorkstations']),
      persistentDirectories: pulumi.Input.asOptionalInput<
              List<WorkstationConfigPersistentDirectory>>(
          map['persistentDirectories']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      readinessChecks:
          pulumi.Input.asOptionalInput<List<WorkstationConfigReadinessCheck>>(
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

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_workstations_v1beta.dart';
import 'customer_encryption_key_workstations_v1beta.dart';
import 'ephemeral_directory.dart';
import 'host_workstations_v1beta.dart';
import 'persistent_directory_workstations_v1beta.dart';
import 'readiness_check_workstations_v1beta.dart';

/// {@template pulumi_workstations_v1beta_workstation_config_workstations_v1beta_args_doc}
/// The set of arguments for WorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_workstation_config_workstations_v1beta_args_doc}
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

  /// Creates a new [WorkstationConfigWorkstationsV1betaArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [container] Optional. Container that runs upon startup for each workstation using this workstation configuration.
  /// [disableTcpConnections] Optional. Disables support for plain TCP connections in the workstation. By default the service supports TCP connections via a websocket relay. Setting this option to true disables that relay, which prevents the usage of services that require plain tcp connections, such as ssh. When enabled, all communication must occur over https or wss.
  /// [displayName] Optional. Human-readable name for this workstation configuration.
  /// [enableAuditAgent] Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service account must also be specified that has `logging.buckets.write` permission on the project. Operating system audit logging is distinct from [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  /// [encryptionKey] Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  /// [ephemeralDirectories] Optional. Ephemeral directories which won't persist across workstation sessions.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [host] Optional. Runtime host for the workstation.
  /// [idleTimeout] Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation configuration.
  /// [persistentDirectories] Optional. Directories to persist across workstation sessions.
  /// [project] Optional.
  /// [readinessChecks] Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  /// [replicaZones] Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  /// [runningTimeout] Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required. ID to use for the workstation configuration.
  WorkstationConfigWorkstationsV1betaArgs({
    Map<String, String>? annotations,
    ContainerWorkstationsV1beta? container,
    bool? disableTcpConnections,
    String? displayName,
    bool? enableAuditAgent,
    CustomerEncryptionKeyWorkstationsV1beta? encryptionKey,
    List<EphemeralDirectory>? ephemeralDirectories,
    String? etag,
    HostWorkstationsV1beta? host,
    String? idleTimeout,
    Map<String, String>? labels,
    String? location,
    String? name,
    List<PersistentDirectoryWorkstationsV1beta>? persistentDirectories,
    String? project,
    List<ReadinessCheckWorkstationsV1beta>? readinessChecks,
    List<String>? replicaZones,
    String? runningTimeout,
    required String workstationClusterId,
    required String workstationConfigId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       container = pulumi.Input.asOptionalInput<ContainerWorkstationsV1beta>(
         container,
       ),
       disableTcpConnections = pulumi.Input.asOptionalInput<bool>(
         disableTcpConnections,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enableAuditAgent = pulumi.Input.asOptionalInput<bool>(enableAuditAgent),
       encryptionKey =
           pulumi.Input.asOptionalInput<
             CustomerEncryptionKeyWorkstationsV1beta
           >(encryptionKey),
       ephemeralDirectories =
           pulumi.Input.asOptionalInput<List<EphemeralDirectory>>(
             ephemeralDirectories,
           ),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       host = pulumi.Input.asOptionalInput<HostWorkstationsV1beta>(host),
       idleTimeout = pulumi.Input.asOptionalInput<String>(idleTimeout),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       persistentDirectories =
           pulumi.Input.asOptionalInput<
             List<PersistentDirectoryWorkstationsV1beta>
           >(persistentDirectories),
       project = pulumi.Input.asOptionalInput<String>(project),
       readinessChecks =
           pulumi.Input.asOptionalInput<List<ReadinessCheckWorkstationsV1beta>>(
             readinessChecks,
           ),
       replicaZones = pulumi.Input.asOptionalInput<List<String>>(replicaZones),
       runningTimeout = pulumi.Input.asOptionalInput<String>(runningTimeout),
       workstationClusterId = pulumi.Input.asInput<String>(
         workstationClusterId,
       ),
       workstationConfigId = pulumi.Input.asInput<String>(workstationConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'container':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerWorkstationsV1beta,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'disableTcpConnections': ?disableTcpConnections,
      'displayName': ?displayName,
      'enableAuditAgent': ?enableAuditAgent,
      'encryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKeyWorkstationsV1beta,
            Map<String, dynamic>
          >(encryptionKey, (value) => value.toMap()),
      'ephemeralDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<EphemeralDirectory>,
            List<Map<String, dynamic>>
          >(
            ephemeralDirectories,
            (value) =>
                pulumi.Input.encodeList<
                  EphemeralDirectory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'etag': ?etag,
      'host':
          ?pulumi.Input.mapOptionalInputValue<
            HostWorkstationsV1beta,
            Map<String, dynamic>
          >(host, (value) => value.toMap()),
      'idleTimeout': ?idleTimeout,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'persistentDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<PersistentDirectoryWorkstationsV1beta>,
            List<Map<String, dynamic>>
          >(
            persistentDirectories,
            (value) =>
                pulumi.Input.encodeList<
                  PersistentDirectoryWorkstationsV1beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'readinessChecks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReadinessCheckWorkstationsV1beta>,
            List<Map<String, dynamic>>
          >(
            readinessChecks,
            (value) =>
                pulumi.Input.encodeList<
                  ReadinessCheckWorkstationsV1beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'replicaZones': ?replicaZones,
      'runningTimeout': ?runningTimeout,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory WorkstationConfigWorkstationsV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkstationConfigWorkstationsV1betaArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      container: map['container'] == null
          ? null
          : ContainerWorkstationsV1beta.fromMap(
              (map['container'] as Map).cast<String, dynamic>(),
            ),
      disableTcpConnections: map['disableTcpConnections'] == null
          ? null
          : map['disableTcpConnections'] as bool,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enableAuditAgent: map['enableAuditAgent'] == null
          ? null
          : map['enableAuditAgent'] as bool,
      encryptionKey: map['encryptionKey'] == null
          ? null
          : CustomerEncryptionKeyWorkstationsV1beta.fromMap(
              (map['encryptionKey'] as Map).cast<String, dynamic>(),
            ),
      ephemeralDirectories: map['ephemeralDirectories'] == null
          ? null
          : pulumi.Input.decodeList<EphemeralDirectory>(
              map['ephemeralDirectories'],
              (value) => EphemeralDirectory.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      etag: map['etag'] == null ? null : map['etag'] as String,
      host: map['host'] == null
          ? null
          : HostWorkstationsV1beta.fromMap(
              (map['host'] as Map).cast<String, dynamic>(),
            ),
      idleTimeout: map['idleTimeout'] == null
          ? null
          : map['idleTimeout'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      persistentDirectories: map['persistentDirectories'] == null
          ? null
          : pulumi.Input.decodeList<PersistentDirectoryWorkstationsV1beta>(
              map['persistentDirectories'],
              (value) => PersistentDirectoryWorkstationsV1beta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      readinessChecks: map['readinessChecks'] == null
          ? null
          : pulumi.Input.decodeList<ReadinessCheckWorkstationsV1beta>(
              map['readinessChecks'],
              (value) => ReadinessCheckWorkstationsV1beta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      replicaZones: map['replicaZones'] == null
          ? null
          : (map['replicaZones'] as List).cast<String>(),
      runningTimeout: map['runningTimeout'] == null
          ? null
          : map['runningTimeout'] as String,
      workstationClusterId: map['workstationClusterId'] as String,
      workstationConfigId: map['workstationConfigId'] as String,
    );
  }
}

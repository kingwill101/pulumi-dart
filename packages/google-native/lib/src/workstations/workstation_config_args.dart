// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'customer_encryption_key.dart';
import 'host.dart';
import 'persistent_directory.dart';
import 'readiness_check.dart';

/// {@template pulumi_workstations_v1_workstation_config_args_doc}
/// The set of arguments for WorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_workstation_config_args_doc}
class WorkstationConfigArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  final pulumi.Input<Container>? container;

  /// Optional. Human-readable name for this workstation configuration.
  final pulumi.Input<String>? displayName;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  final pulumi.Input<CustomerEncryptionKey>? encryptionKey;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. Runtime host for the workstation.
  final pulumi.Input<Host>? host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  final pulumi.Input<String>? idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Identifier. Full name of this workstation configuration.
  final pulumi.Input<String>? name;

  /// Optional. Directories to persist across workstation sessions.
  final pulumi.Input<List<PersistentDirectory>>? persistentDirectories;
  final pulumi.Input<String>? project;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  final pulumi.Input<List<ReadinessCheck>>? readinessChecks;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  final pulumi.Input<String>? runningTimeout;
  final pulumi.Input<String> workstationClusterId;

  /// Required. ID to use for the workstation configuration.
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [WorkstationConfigArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [container] Optional. Container that runs upon startup for each workstation using this workstation configuration.
  /// [displayName] Optional. Human-readable name for this workstation configuration.
  /// [encryptionKey] Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
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
  WorkstationConfigArgs({
    Map<String, String>? annotations,
    Container? container,
    String? displayName,
    CustomerEncryptionKey? encryptionKey,
    String? etag,
    Host? host,
    String? idleTimeout,
    Map<String, String>? labels,
    String? location,
    String? name,
    List<PersistentDirectory>? persistentDirectories,
    String? project,
    List<ReadinessCheck>? readinessChecks,
    List<String>? replicaZones,
    String? runningTimeout,
    required String workstationClusterId,
    required String workstationConfigId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       container = pulumi.Input.asOptionalInput<Container>(container),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       encryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKey>(
         encryptionKey,
       ),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       host = pulumi.Input.asOptionalInput<Host>(host),
       idleTimeout = pulumi.Input.asOptionalInput<String>(idleTimeout),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       persistentDirectories =
           pulumi.Input.asOptionalInput<List<PersistentDirectory>>(
             persistentDirectories,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       readinessChecks = pulumi.Input.asOptionalInput<List<ReadinessCheck>>(
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
          ?pulumi.Input.mapOptionalInputValue<Container, Map<String, dynamic>>(
            container,
            (value) => value.toMap(),
          ),
      'displayName': ?displayName,
      'encryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKey,
            Map<String, dynamic>
          >(encryptionKey, (value) => value.toMap()),
      'etag': ?etag,
      'host': ?pulumi.Input.mapOptionalInputValue<Host, Map<String, dynamic>>(
        host,
        (value) => value.toMap(),
      ),
      'idleTimeout': ?idleTimeout,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'persistentDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<PersistentDirectory>,
            List<Map<String, dynamic>>
          >(
            persistentDirectories,
            (value) =>
                pulumi.Input.encodeList<
                  PersistentDirectory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'readinessChecks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReadinessCheck>,
            List<Map<String, dynamic>>
          >(
            readinessChecks,
            (value) =>
                pulumi.Input.encodeList<ReadinessCheck, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'replicaZones': ?replicaZones,
      'runningTimeout': ?runningTimeout,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory WorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      container: map['container'] == null
          ? null
          : Container.fromMap(
              (map['container'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      encryptionKey: map['encryptionKey'] == null
          ? null
          : CustomerEncryptionKey.fromMap(
              (map['encryptionKey'] as Map).cast<String, dynamic>(),
            ),
      etag: map['etag'] == null ? null : map['etag'] as String,
      host: map['host'] == null
          ? null
          : Host.fromMap((map['host'] as Map).cast<String, dynamic>()),
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
          : pulumi.Input.decodeList<PersistentDirectory>(
              map['persistentDirectories'],
              (value) => PersistentDirectory.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      readinessChecks: map['readinessChecks'] == null
          ? null
          : pulumi.Input.decodeList<ReadinessCheck>(
              map['readinessChecks'],
              (value) => ReadinessCheck.fromMap(
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

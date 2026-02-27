// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../worker_pool_network_config/worker_pool_network_config.dart';
import '../worker_pool_private_service_connect/worker_pool_private_service_connect.dart';
import '../worker_pool_worker_config/worker_pool_worker_config.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// User-defined name of the `WorkerPool`.
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// Network configuration for the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolNetworkConfig>? networkConfig;

  /// Private Service Connect configuration for the pool.
  final pulumi.Input<WorkerPoolPrivateServiceConnect>? privateServiceConnect;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Configuration to be used for a creating workers in the `WorkerPool`. Structure is documented below.
  final pulumi.Input<WorkerPoolWorkerConfig>? workerConfig;

  WorkerPoolArgs({
    this.annotations,
    this.displayName,
    required this.location,
    this.name,
    this.networkConfig,
    this.privateServiceConnect,
    this.project,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkerPoolNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final privateServiceConnectValue = privateServiceConnect;
    if (privateServiceConnectValue != null) {
      map['privateServiceConnect'] = pulumi.Input.mapOptionalInputValue<
              WorkerPoolPrivateServiceConnect, Map<String, dynamic>>(
          privateServiceConnectValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkerPoolWorkerConfig,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkerPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig: pulumi.Input.asOptionalInput<WorkerPoolNetworkConfig>(
          map['networkConfig']),
      privateServiceConnect:
          pulumi.Input.asOptionalInput<WorkerPoolPrivateServiceConnect>(
              map['privateServiceConnect']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workerConfig: pulumi.Input.asOptionalInput<WorkerPoolWorkerConfig>(
          map['workerConfig']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'network_config7.dart';
import 'worker_config3.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs3 {
  /// Network configuration for the `WorkerPool`.
  final Input<NetworkConfig7>? networkConfig;
  final Input<String>? project;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final Input<String> region;

  /// Worker configuration for the `WorkerPool`.
  final Input<WorkerConfig3>? workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final Input<String> workerPoolId;

  WorkerPoolArgs3({
    this.networkConfig,
    this.project,
    required this.region,
    this.workerConfig,
    required this.workerPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig7, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] =
          Input.mapOptionalInputValue<WorkerConfig3, Map<String, dynamic>>(
              workerConfigValue, (value) => value.toMap());
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory WorkerPoolArgs3.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs3(
      networkConfig:
          Input.asOptionalInput<NetworkConfig7>(map['networkConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      workerConfig: Input.asOptionalInput<WorkerConfig3>(map['workerConfig']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}

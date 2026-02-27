// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_config8.dart';
import 'worker_config4.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolArgs4 {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Input<Map<String, String>>? annotations;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final Input<String>? displayName;
  final Input<String>? location;

  /// Network configuration for the `WorkerPool`.
  final Input<NetworkConfig8>? networkConfig;
  final Input<String>? project;

  /// Worker configuration for the `WorkerPool`.
  final Input<WorkerConfig4>? workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final Input<String> workerPoolId;

  WorkerPoolArgs4({
    this.annotations,
    this.displayName,
    this.location,
    this.networkConfig,
    this.project,
    this.workerConfig,
    required this.workerPoolId,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig8, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] =
          Input.mapOptionalInputValue<WorkerConfig4, Map<String, dynamic>>(
              workerConfigValue, (value) => value.toMap());
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory WorkerPoolArgs4.fromMap(Map<String, dynamic> map) {
    return WorkerPoolArgs4(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig8>(map['networkConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      workerConfig: Input.asOptionalInput<WorkerConfig4>(map['workerConfig']),
      workerPoolId: Input.asInput<String>(map['workerPoolId']),
    );
  }
}

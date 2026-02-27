// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_cloudbuild_v1beta1.dart';
import 'worker_config_cloudbuild_v1beta1.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolCloudbuildV1beta1Args {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Network configuration for the `WorkerPool`.
  final pulumi.Input<NetworkConfigCloudbuildV1beta1>? networkConfig;
  final pulumi.Input<String>? project;

  /// Worker configuration for the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1beta1>? workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> workerPoolId;

  WorkerPoolCloudbuildV1beta1Args({
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
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigCloudbuildV1beta1,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkerConfigCloudbuildV1beta1,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory WorkerPoolCloudbuildV1beta1Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1beta1Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      networkConfig:
          pulumi.Input.asOptionalInput<NetworkConfigCloudbuildV1beta1>(
              map['networkConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workerConfig: pulumi.Input.asOptionalInput<WorkerConfigCloudbuildV1beta1>(
          map['workerConfig']),
      workerPoolId: pulumi.Input.asInput<String>(map['workerPoolId']),
    );
  }
}

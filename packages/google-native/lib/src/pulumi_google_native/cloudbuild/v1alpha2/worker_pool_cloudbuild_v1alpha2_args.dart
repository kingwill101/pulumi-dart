// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_cloudbuild_v1alpha2.dart';
import 'worker_config_cloudbuild_v1alpha2.dart';

/// The set of arguments for WorkerPool.
class WorkerPoolCloudbuildV1alpha2Args {
  /// Network configuration for the `WorkerPool`.
  final pulumi.Input<NetworkConfigCloudbuildV1alpha2>? networkConfig;
  final pulumi.Input<String>? project;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final pulumi.Input<String> region;

  /// Worker configuration for the `WorkerPool`.
  final pulumi.Input<WorkerConfigCloudbuildV1alpha2>? workerConfig;

  /// Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> workerPoolId;

  WorkerPoolCloudbuildV1alpha2Args({
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
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigCloudbuildV1alpha2,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          WorkerConfigCloudbuildV1alpha2,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    map['workerPoolId'] = workerPoolId;
    return map;
  }

  factory WorkerPoolCloudbuildV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return WorkerPoolCloudbuildV1alpha2Args(
      networkConfig:
          pulumi.Input.asOptionalInput<NetworkConfigCloudbuildV1alpha2>(
              map['networkConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      workerConfig:
          pulumi.Input.asOptionalInput<WorkerConfigCloudbuildV1alpha2>(
              map['workerConfig']),
      workerPoolId: pulumi.Input.asInput<String>(map['workerPoolId']),
    );
  }
}

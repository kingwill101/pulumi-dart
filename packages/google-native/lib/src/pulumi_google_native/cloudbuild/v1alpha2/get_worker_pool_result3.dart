// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response7.dart';
import 'worker_config_response3.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult3 {
  /// Time at which the request to create the `WorkerPool` was received.
  final String createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  final String deleteTime;

  /// The resource name of the `WorkerPool`. Format of the name is `projects/{project_id}/workerPools/{worker_pool_id}`, where the value of {worker_pool_id} is provided in the CreateWorkerPool request.
  final String name;

  /// Network configuration for the `WorkerPool`.
  final NetworkConfigResponse7 networkConfig;

  /// Immutable. The region where the `WorkerPool` runs. Only "us-central1" is currently supported. Note that `region` cannot be changed once the `WorkerPool` is created.
  final String region;

  /// WorkerPool state.
  final String state;

  /// Time at which the request to update the `WorkerPool` was received.
  final String updateTime;

  /// Worker configuration for the `WorkerPool`.
  final WorkerConfigResponse3 workerConfig;

  GetWorkerPoolResult3({
    required this.createTime,
    required this.deleteTime,
    required this.name,
    required this.networkConfig,
    required this.region,
    required this.state,
    required this.updateTime,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['region'] = region;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['workerConfig'] = workerConfig.toMap();
    return map;
  }

  factory GetWorkerPoolResult3.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult3(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse7.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      workerConfig: WorkerConfigResponse3.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

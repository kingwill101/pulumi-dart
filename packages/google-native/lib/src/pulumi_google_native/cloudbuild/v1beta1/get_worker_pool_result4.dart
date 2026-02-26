// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response8.dart';
import 'worker_config_response4.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult4 {
  /// User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  final Map<String, String> annotations;

  /// Time at which the request to create the `WorkerPool` was received.
  final String createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  final String deleteTime;

  /// A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.
  final String displayName;

  /// Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
  final String etag;

  /// The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.
  final String name;

  /// Network configuration for the `WorkerPool`.
  final NetworkConfigResponse8 networkConfig;

  /// `WorkerPool` state.
  final String state;

  /// A unique identifier for the `WorkerPool`.
  final String uid;

  /// Time at which the request to update the `WorkerPool` was received.
  final String updateTime;

  /// Worker configuration for the `WorkerPool`.
  final WorkerConfigResponse4 workerConfig;

  GetWorkerPoolResult4({
    required this.annotations,
    required this.createTime,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.networkConfig,
    required this.state,
    required this.uid,
    required this.updateTime,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['workerConfig'] = workerConfig.toMap();
    return map;
  }

  factory GetWorkerPoolResult4.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult4(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse8.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      workerConfig: WorkerConfigResponse4.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

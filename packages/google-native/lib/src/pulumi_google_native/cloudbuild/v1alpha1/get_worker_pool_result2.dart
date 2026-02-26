// ignore_for_file: unused_element, unnecessary_cast

import 'worker_config_response2.dart';

/// Result data returned by getWorkerPool.
class GetWorkerPoolResult2 {
  /// Time at which the request to create the `WorkerPool` was received.
  final String createTime;

  /// Time at which the request to delete the `WorkerPool` was received.
  final String deleteTime;

  /// User-defined name of the `WorkerPool`.
  final String name;

  /// The project ID of the GCP project for which the `WorkerPool` is created.
  final String project;

  /// List of regions to create the `WorkerPool`. Regions can't be empty. If Cloud Build adds a new GCP region in the future, the existing `WorkerPool` will not be enabled in the new region automatically; you must add the new region to the `regions` field to enable the `WorkerPool` in that region.
  final List<String> regions;

  /// The service account used to manage the `WorkerPool`. The service account must have the Compute Instance Admin (Beta) permission at the project level.
  final String serviceAccountEmail;

  /// WorkerPool Status.
  final String status;

  /// Time at which the request to update the `WorkerPool` was received.
  final String updateTime;

  /// Configuration to be used for a creating workers in the `WorkerPool`.
  final WorkerConfigResponse2 workerConfig;

  /// Total number of workers to be created across all requested regions.
  final String workerCount;

  GetWorkerPoolResult2({
    required this.createTime,
    required this.deleteTime,
    required this.name,
    required this.project,
    required this.regions,
    required this.serviceAccountEmail,
    required this.status,
    required this.updateTime,
    required this.workerConfig,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['name'] = name;
    map['project'] = project;
    map['regions'] = regions;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['status'] = status;
    map['updateTime'] = updateTime;
    map['workerConfig'] = workerConfig.toMap();
    map['workerCount'] = workerCount;
    return map;
  }

  factory GetWorkerPoolResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolResult2(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      regions: (map['regions'] as List).cast<String>(),
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      status: map['status'] as String,
      updateTime: map['updateTime'] as String,
      workerConfig: WorkerConfigResponse2.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
      workerCount: map['workerCount'] as String,
    );
  }
}

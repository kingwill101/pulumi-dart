// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource_response.dart';
import 'triggerer_resource_response.dart';
import 'web_server_resource_response.dart';
import 'worker_resource_response.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigResponse {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResourceResponse scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResourceResponse triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResourceResponse webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResourceResponse worker;

  WorkloadsConfigResponse({
    required this.scheduler,
    required this.triggerer,
    required this.webServer,
    required this.worker,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduler'] = scheduler.toMap();
    map['triggerer'] = triggerer.toMap();
    map['webServer'] = webServer.toMap();
    map['worker'] = worker.toMap();
    return map;
  }

  factory WorkloadsConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigResponse(
      scheduler: SchedulerResourceResponse.fromMap(
          (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: TriggererResourceResponse.fromMap(
          (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: WebServerResourceResponse.fromMap(
          (map['webServer'] as Map).cast<String, dynamic>()),
      worker: WorkerResourceResponse.fromMap(
          (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

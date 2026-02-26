// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource_response2.dart';
import 'triggerer_resource_response2.dart';
import 'web_server_resource_response2.dart';
import 'worker_resource_response2.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigResponse2 {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResourceResponse2 scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResourceResponse2 triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResourceResponse2 webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResourceResponse2 worker;

  WorkloadsConfigResponse2({
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

  factory WorkloadsConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigResponse2(
      scheduler: SchedulerResourceResponse2.fromMap(
          (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: TriggererResourceResponse2.fromMap(
          (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: WebServerResourceResponse2.fromMap(
          (map['webServer'] as Map).cast<String, dynamic>()),
      worker: WorkerResourceResponse2.fromMap(
          (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

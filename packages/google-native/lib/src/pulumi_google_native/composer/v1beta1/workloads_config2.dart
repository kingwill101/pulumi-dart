// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource2.dart';
import 'triggerer_resource2.dart';
import 'web_server_resource2.dart';
import 'worker_resource2.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfig2 {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResource2? scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResource2? triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResource2? webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResource2? worker;

  WorkloadsConfig2({
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final schedulerValue = scheduler;
    if (schedulerValue != null) {
      map['scheduler'] = schedulerValue.toMap();
    }
    final triggererValue = triggerer;
    if (triggererValue != null) {
      map['triggerer'] = triggererValue.toMap();
    }
    final webServerValue = webServer;
    if (webServerValue != null) {
      map['webServer'] = webServerValue.toMap();
    }
    final workerValue = worker;
    if (workerValue != null) {
      map['worker'] = workerValue.toMap();
    }
    return map;
  }

  factory WorkloadsConfig2.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfig2(
      scheduler: map['scheduler'] == null
          ? null
          : SchedulerResource2.fromMap(
              (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: map['triggerer'] == null
          ? null
          : TriggererResource2.fromMap(
              (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: map['webServer'] == null
          ? null
          : WebServerResource2.fromMap(
              (map['webServer'] as Map).cast<String, dynamic>()),
      worker: map['worker'] == null
          ? null
          : WorkerResource2.fromMap(
              (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource.dart';
import 'triggerer_resource.dart';
import 'web_server_resource.dart';
import 'worker_resource.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfig {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResource? scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResource? triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResource? webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResource? worker;

  /// Creates a new [WorkloadsConfig].
  /// [scheduler] Optional. Resources used by Airflow schedulers.
  /// [triggerer] Optional. Resources used by Airflow triggerers.
  /// [webServer] Optional. Resources used by Airflow web server.
  /// [worker] Optional. Resources used by Airflow workers.
  WorkloadsConfig({
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

  factory WorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfig(
      scheduler: map['scheduler'] == null
          ? null
          : SchedulerResource.fromMap(
              (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: map['triggerer'] == null
          ? null
          : TriggererResource.fromMap(
              (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: map['webServer'] == null
          ? null
          : WebServerResource.fromMap(
              (map['webServer'] as Map).cast<String, dynamic>()),
      worker: map['worker'] == null
          ? null
          : WorkerResource.fromMap(
              (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

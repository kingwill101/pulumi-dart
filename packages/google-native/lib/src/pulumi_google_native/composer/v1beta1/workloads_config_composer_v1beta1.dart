// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource_composer_v1beta1.dart';
import 'triggerer_resource_composer_v1beta1.dart';
import 'web_server_resource_composer_v1beta1.dart';
import 'worker_resource_composer_v1beta1.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigComposerV1beta1 {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResourceComposerV1beta1? scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResourceComposerV1beta1? triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResourceComposerV1beta1? webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResourceComposerV1beta1? worker;

  WorkloadsConfigComposerV1beta1({
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

  factory WorkloadsConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfigComposerV1beta1(
      scheduler: map['scheduler'] == null
          ? null
          : SchedulerResourceComposerV1beta1.fromMap(
              (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: map['triggerer'] == null
          ? null
          : TriggererResourceComposerV1beta1.fromMap(
              (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: map['webServer'] == null
          ? null
          : WebServerResourceComposerV1beta1.fromMap(
              (map['webServer'] as Map).cast<String, dynamic>()),
      worker: map['worker'] == null
          ? null
          : WorkerResourceComposerV1beta1.fromMap(
              (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

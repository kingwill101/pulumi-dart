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
    return <String, dynamic>{
      'scheduler': ?scheduler == null ? null : scheduler!.toMap(),
      'triggerer': ?triggerer == null ? null : triggerer!.toMap(),
      'webServer': ?webServer == null ? null : webServer!.toMap(),
      'worker': ?worker == null ? null : worker!.toMap(),
    };
  }

  factory WorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadsConfig(
      scheduler: map['scheduler'] == null
          ? null
          : SchedulerResource.fromMap(
              (map['scheduler'] as Map).cast<String, dynamic>(),
            ),
      triggerer: map['triggerer'] == null
          ? null
          : TriggererResource.fromMap(
              (map['triggerer'] as Map).cast<String, dynamic>(),
            ),
      webServer: map['webServer'] == null
          ? null
          : WebServerResource.fromMap(
              (map['webServer'] as Map).cast<String, dynamic>(),
            ),
      worker: map['worker'] == null
          ? null
          : WorkerResource.fromMap(
              (map['worker'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

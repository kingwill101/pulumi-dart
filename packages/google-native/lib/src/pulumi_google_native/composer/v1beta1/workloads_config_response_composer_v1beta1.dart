// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_resource_response_composer_v1beta1.dart';
import 'triggerer_resource_response_composer_v1beta1.dart';
import 'web_server_resource_response_composer_v1beta1.dart';
import 'worker_resource_response_composer_v1beta1.dart';

/// The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
class WorkloadsConfigResponseComposerV1beta1 {
  /// Optional. Resources used by Airflow schedulers.
  final SchedulerResourceResponseComposerV1beta1 scheduler;

  /// Optional. Resources used by Airflow triggerers.
  final TriggererResourceResponseComposerV1beta1 triggerer;

  /// Optional. Resources used by Airflow web server.
  final WebServerResourceResponseComposerV1beta1 webServer;

  /// Optional. Resources used by Airflow workers.
  final WorkerResourceResponseComposerV1beta1 worker;

  WorkloadsConfigResponseComposerV1beta1({
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

  factory WorkloadsConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WorkloadsConfigResponseComposerV1beta1(
      scheduler: SchedulerResourceResponseComposerV1beta1.fromMap(
          (map['scheduler'] as Map).cast<String, dynamic>()),
      triggerer: TriggererResourceResponseComposerV1beta1.fromMap(
          (map['triggerer'] as Map).cast<String, dynamic>()),
      webServer: WebServerResourceResponseComposerV1beta1.fromMap(
          (map['webServer'] as Map).cast<String, dynamic>()),
      worker: WorkerResourceResponseComposerV1beta1.fromMap(
          (map['worker'] as Map).cast<String, dynamic>()),
    );
  }
}

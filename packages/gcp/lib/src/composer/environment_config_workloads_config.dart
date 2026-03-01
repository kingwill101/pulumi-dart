// ignore_for_file: unused_element, unnecessary_cast

import 'environment_config_workloads_config_dag_processor.dart';
import 'environment_config_workloads_config_scheduler.dart';
import 'environment_config_workloads_config_triggerer.dart';
import 'environment_config_workloads_config_web_server.dart';
import 'environment_config_workloads_config_worker.dart';

class EnvironmentConfigWorkloadsConfig {
  /// Configuration for resources used by DAG processor.
  final EnvironmentConfigWorkloadsConfigDagProcessor? dagProcessor;

  /// Configuration for resources used by Airflow schedulers.
  final EnvironmentConfigWorkloadsConfigScheduler? scheduler;

  /// Configuration for resources used by Airflow triggerers.
  final EnvironmentConfigWorkloadsConfigTriggerer? triggerer;

  /// Configuration for resources used by Airflow web server.
  final EnvironmentConfigWorkloadsConfigWebServer? webServer;

  /// Configuration for resources used by Airflow workers.
  final EnvironmentConfigWorkloadsConfigWorker? worker;

  /// Creates a new [EnvironmentConfigWorkloadsConfig].
  /// [dagProcessor] Configuration for resources used by DAG processor.
  /// [scheduler] Configuration for resources used by Airflow schedulers.
  /// [triggerer] Configuration for resources used by Airflow triggerers.
  /// [webServer] Configuration for resources used by Airflow web server.
  /// [worker] Configuration for resources used by Airflow workers.
  EnvironmentConfigWorkloadsConfig({
    this.dagProcessor,
    this.scheduler,
    this.triggerer,
    this.webServer,
    this.worker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagProcessor': ?dagProcessor == null ? null : dagProcessor!.toMap(),
      'scheduler': ?scheduler == null ? null : scheduler!.toMap(),
      'triggerer': ?triggerer == null ? null : triggerer!.toMap(),
      'webServer': ?webServer == null ? null : webServer!.toMap(),
      'worker': ?worker == null ? null : worker!.toMap(),
    };
  }

  factory EnvironmentConfigWorkloadsConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfig(
      dagProcessor: map['dagProcessor'] == null
          ? null
          : EnvironmentConfigWorkloadsConfigDagProcessor.fromMap(
              (map['dagProcessor'] as Map).cast<String, dynamic>(),
            ),
      scheduler: map['scheduler'] == null
          ? null
          : EnvironmentConfigWorkloadsConfigScheduler.fromMap(
              (map['scheduler'] as Map).cast<String, dynamic>(),
            ),
      triggerer: map['triggerer'] == null
          ? null
          : EnvironmentConfigWorkloadsConfigTriggerer.fromMap(
              (map['triggerer'] as Map).cast<String, dynamic>(),
            ),
      webServer: map['webServer'] == null
          ? null
          : EnvironmentConfigWorkloadsConfigWebServer.fromMap(
              (map['webServer'] as Map).cast<String, dynamic>(),
            ),
      worker: map['worker'] == null
          ? null
          : EnvironmentConfigWorkloadsConfigWorker.fromMap(
              (map['worker'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

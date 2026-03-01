// ignore_for_file: unused_element, unnecessary_cast

import 'environment_logging_configuration_dag_processing_logs.dart';
import 'environment_logging_configuration_scheduler_logs.dart';
import 'environment_logging_configuration_task_logs.dart';
import 'environment_logging_configuration_webserver_logs.dart';
import 'environment_logging_configuration_worker_logs.dart';

class EnvironmentLoggingConfiguration {
  /// (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default.
  final EnvironmentLoggingConfigurationDagProcessingLogs? dagProcessingLogs;

  /// Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default.
  final EnvironmentLoggingConfigurationSchedulerLogs? schedulerLogs;

  /// Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with `INFO` log level.
  final EnvironmentLoggingConfigurationTaskLogs? taskLogs;

  /// Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default.
  final EnvironmentLoggingConfigurationWebserverLogs? webserverLogs;

  /// Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.
  final EnvironmentLoggingConfigurationWorkerLogs? workerLogs;

  /// Creates a new [EnvironmentLoggingConfiguration].
  /// [dagProcessingLogs] (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default.
  /// [schedulerLogs] Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default.
  /// [taskLogs] Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with `INFO` log level.
  /// [webserverLogs] Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default.
  /// [workerLogs] Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.
  EnvironmentLoggingConfiguration({
    this.dagProcessingLogs,
    this.schedulerLogs,
    this.taskLogs,
    this.webserverLogs,
    this.workerLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagProcessingLogs': ?dagProcessingLogs == null
          ? null
          : dagProcessingLogs!.toMap(),
      'schedulerLogs': ?schedulerLogs == null ? null : schedulerLogs!.toMap(),
      'taskLogs': ?taskLogs == null ? null : taskLogs!.toMap(),
      'webserverLogs': ?webserverLogs == null ? null : webserverLogs!.toMap(),
      'workerLogs': ?workerLogs == null ? null : workerLogs!.toMap(),
    };
  }

  factory EnvironmentLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentLoggingConfiguration(
      dagProcessingLogs: map['dagProcessingLogs'] == null
          ? null
          : EnvironmentLoggingConfigurationDagProcessingLogs.fromMap(
              (map['dagProcessingLogs'] as Map).cast<String, dynamic>(),
            ),
      schedulerLogs: map['schedulerLogs'] == null
          ? null
          : EnvironmentLoggingConfigurationSchedulerLogs.fromMap(
              (map['schedulerLogs'] as Map).cast<String, dynamic>(),
            ),
      taskLogs: map['taskLogs'] == null
          ? null
          : EnvironmentLoggingConfigurationTaskLogs.fromMap(
              (map['taskLogs'] as Map).cast<String, dynamic>(),
            ),
      webserverLogs: map['webserverLogs'] == null
          ? null
          : EnvironmentLoggingConfigurationWebserverLogs.fromMap(
              (map['webserverLogs'] as Map).cast<String, dynamic>(),
            ),
      workerLogs: map['workerLogs'] == null
          ? null
          : EnvironmentLoggingConfigurationWorkerLogs.fromMap(
              (map['workerLogs'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

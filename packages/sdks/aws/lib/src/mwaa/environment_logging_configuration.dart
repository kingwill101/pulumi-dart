// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_logging_configuration_dag_processing_logs.dart';
import 'environment_logging_configuration_scheduler_logs.dart';
import 'environment_logging_configuration_task_logs.dart';
import 'environment_logging_configuration_webserver_logs.dart';
import 'environment_logging_configuration_worker_logs.dart';

class EnvironmentLoggingConfiguration {
  /// (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default.
  final pulumi.Input<EnvironmentLoggingConfigurationDagProcessingLogs?>? dagProcessingLogs;
  /// Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default.
  final pulumi.Input<EnvironmentLoggingConfigurationSchedulerLogs?>? schedulerLogs;
  /// Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with `INFO` log level.
  final pulumi.Input<EnvironmentLoggingConfigurationTaskLogs?>? taskLogs;
  /// Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default.
  final pulumi.Input<EnvironmentLoggingConfigurationWebserverLogs?>? webserverLogs;
  /// Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.
  final pulumi.Input<EnvironmentLoggingConfigurationWorkerLogs?>? workerLogs;

  /// Creates a new [EnvironmentLoggingConfiguration].
  /// [dagProcessingLogs] (Optional) Log configuration options for processing DAGs. See Module logging configuration for more information. Disabled by default.
  /// [schedulerLogs] Log configuration options for the schedulers. See Module logging configuration for more information. Disabled by default.
  /// [taskLogs] Log configuration options for DAG tasks. See Module logging configuration for more information. Enabled by default with `INFO` log level.
  /// [webserverLogs] Log configuration options for the webservers. See Module logging configuration for more information. Disabled by default.
  /// [workerLogs] Log configuration options for the workers. See Module logging configuration for more information. Disabled by default.
  const EnvironmentLoggingConfiguration({
    this.dagProcessingLogs,
    this.schedulerLogs,
    this.taskLogs,
    this.webserverLogs,
    this.workerLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dagProcessingLogs': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfigurationDagProcessingLogs, Map<String, dynamic>>(dagProcessingLogs, (value) => value.toMap()),
      'schedulerLogs': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfigurationSchedulerLogs, Map<String, dynamic>>(schedulerLogs, (value) => value.toMap()),
      'taskLogs': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfigurationTaskLogs, Map<String, dynamic>>(taskLogs, (value) => value.toMap()),
      'webserverLogs': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfigurationWebserverLogs, Map<String, dynamic>>(webserverLogs, (value) => value.toMap()),
      'workerLogs': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfigurationWorkerLogs, Map<String, dynamic>>(workerLogs, (value) => value.toMap()),
    };
  }

  factory EnvironmentLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentLoggingConfiguration(
      dagProcessingLogs: (() { final guardedValue = map['dagProcessingLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfigurationDagProcessingLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulerLogs: (() { final guardedValue = map['schedulerLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfigurationSchedulerLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskLogs: (() { final guardedValue = map['taskLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfigurationTaskLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webserverLogs: (() { final guardedValue = map['webserverLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfigurationWebserverLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerLogs: (() { final guardedValue = map['workerLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfigurationWorkerLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

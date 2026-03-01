// ignore_for_file: unused_element, unnecessary_cast

import 'application_application_configuration_flink_application_configuration_checkpoint_configuration.dart';
import 'application_application_configuration_flink_application_configuration_monitoring_configuration.dart';
import 'application_application_configuration_flink_application_configuration_parallelism_configuration.dart';

class ApplicationApplicationConfigurationFlinkApplicationConfiguration {
  /// Describes an application's checkpointing configuration.
  final ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration?
  checkpointConfiguration;

  /// Describes configuration parameters for CloudWatch logging for an application.
  final ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration?
  monitoringConfiguration;

  /// Describes parameters for how an application executes multiple tasks simultaneously.
  final ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration?
  parallelismConfiguration;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfiguration].
  /// [checkpointConfiguration] Describes an application's checkpointing configuration.
  /// [monitoringConfiguration] Describes configuration parameters for CloudWatch logging for an application.
  /// [parallelismConfiguration] Describes parameters for how an application executes multiple tasks simultaneously.
  ApplicationApplicationConfigurationFlinkApplicationConfiguration({
    this.checkpointConfiguration,
    this.monitoringConfiguration,
    this.parallelismConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointConfiguration': ?checkpointConfiguration == null
          ? null
          : checkpointConfiguration!.toMap(),
      'monitoringConfiguration': ?monitoringConfiguration == null
          ? null
          : monitoringConfiguration!.toMap(),
      'parallelismConfiguration': ?parallelismConfiguration == null
          ? null
          : parallelismConfiguration!.toMap(),
    };
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationFlinkApplicationConfiguration(
      checkpointConfiguration: map['checkpointConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration.fromMap(
              (map['checkpointConfiguration'] as Map).cast<String, dynamic>(),
            ),
      monitoringConfiguration: map['monitoringConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration.fromMap(
              (map['monitoringConfiguration'] as Map).cast<String, dynamic>(),
            ),
      parallelismConfiguration: map['parallelismConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap(
              (map['parallelismConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

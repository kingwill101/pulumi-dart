// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_flink_application_configuration_checkpoint_configuration.dart';
import 'application_application_configuration_flink_application_configuration_monitoring_configuration.dart';
import 'application_application_configuration_flink_application_configuration_parallelism_configuration.dart';

class ApplicationApplicationConfigurationFlinkApplicationConfiguration {
  /// Describes an application's checkpointing configuration.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration>? checkpointConfiguration;
  /// Describes configuration parameters for CloudWatch logging for an application.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration>? monitoringConfiguration;
  /// Describes parameters for how an application executes multiple tasks simultaneously.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration>? parallelismConfiguration;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfiguration].
  /// [checkpointConfiguration] Describes an application's checkpointing configuration.
  /// [monitoringConfiguration] Describes configuration parameters for CloudWatch logging for an application.
  /// [parallelismConfiguration] Describes parameters for how an application executes multiple tasks simultaneously.
  const ApplicationApplicationConfigurationFlinkApplicationConfiguration({
    this.checkpointConfiguration,
    this.monitoringConfiguration,
    this.parallelismConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration, Map<String, dynamic>>(checkpointConfiguration, (value) => value.toMap()),
      'monitoringConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration, Map<String, dynamic>>(monitoringConfiguration, (value) => value.toMap()),
      'parallelismConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration, Map<String, dynamic>>(parallelismConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfiguration(
      checkpointConfiguration: (() { final guardedValue = map['checkpointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringConfiguration: (() { final guardedValue = map['monitoringConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parallelismConfiguration: (() { final guardedValue = map['parallelismConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


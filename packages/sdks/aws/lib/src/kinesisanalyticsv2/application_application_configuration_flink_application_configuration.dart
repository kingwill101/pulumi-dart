// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_flink_application_configuration_checkpoint_configuration.dart';
import 'application_application_configuration_flink_application_configuration_monitoring_configuration.dart';
import 'application_application_configuration_flink_application_configuration_parallelism_configuration.dart';

class ApplicationApplicationConfigurationFlinkApplicationConfiguration {
  /// Application's checkpointing configuration. See `checkpointConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration?>? checkpointConfiguration;
  /// Configuration parameters for CloudWatch logging for an application. See `monitoringConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration?>? monitoringConfiguration;
  /// Parameters for how an application executes multiple tasks simultaneously. See `parallelismConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration?>? parallelismConfiguration;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfiguration].
  /// [checkpointConfiguration] Application's checkpointing configuration. See `checkpointConfiguration` Block below.
  /// [monitoringConfiguration] Configuration parameters for CloudWatch logging for an application. See `monitoringConfiguration` Block below.
  /// [parallelismConfiguration] Parameters for how an application executes multiple tasks simultaneously. See `parallelismConfiguration` Block below.
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

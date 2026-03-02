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
  ApplicationApplicationConfigurationFlinkApplicationConfiguration({
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
      checkpointConfiguration: map['checkpointConfiguration'] == null ? null : ((ApplicationApplicationConfigurationFlinkApplicationConfigurationCheckpointConfiguration.fromMap((map['checkpointConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      monitoringConfiguration: map['monitoringConfiguration'] == null ? null : ((ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration.fromMap((map['monitoringConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      parallelismConfiguration: map['parallelismConfiguration'] == null ? null : ((ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap((map['parallelismConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


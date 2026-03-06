// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_run_configuration_application_restore_configuration.dart';
import 'application_application_configuration_run_configuration_flink_run_configuration.dart';

class ApplicationApplicationConfigurationRunConfiguration {
  /// The restore behavior of a restarting application.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration>? applicationRestoreConfiguration;
  /// The starting parameters for a Flink-based Kinesis Data Analytics application.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration>? flinkRunConfiguration;

  /// Creates a new [ApplicationApplicationConfigurationRunConfiguration].
  /// [applicationRestoreConfiguration] The restore behavior of a restarting application.
  /// [flinkRunConfiguration] The starting parameters for a Flink-based Kinesis Data Analytics application.
  const ApplicationApplicationConfigurationRunConfiguration({
    this.applicationRestoreConfiguration,
    this.flinkRunConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationRestoreConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration, Map<String, dynamic>>(applicationRestoreConfiguration, (value) => value.toMap()),
      'flinkRunConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration, Map<String, dynamic>>(flinkRunConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationRunConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfiguration(
      applicationRestoreConfiguration: (() { final guardedValue = map['applicationRestoreConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flinkRunConfiguration: (() { final guardedValue = map['flinkRunConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


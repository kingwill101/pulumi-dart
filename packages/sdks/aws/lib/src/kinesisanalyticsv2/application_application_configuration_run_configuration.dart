// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_run_configuration_application_restore_configuration.dart';
import 'application_application_configuration_run_configuration_flink_run_configuration.dart';

class ApplicationApplicationConfigurationRunConfiguration {
  /// Restore behavior of a restarting application. See `applicationRestoreConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration?>? applicationRestoreConfiguration;
  /// Starting parameters for a Flink-based application. See `flinkRunConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration?>? flinkRunConfiguration;

  /// Creates a new [ApplicationApplicationConfigurationRunConfiguration].
  /// [applicationRestoreConfiguration] Restore behavior of a restarting application. See `applicationRestoreConfiguration` Block below.
  /// [flinkRunConfiguration] Starting parameters for a Flink-based application. See `flinkRunConfiguration` Block below.
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

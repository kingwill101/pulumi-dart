// ignore_for_file: unused_element, unnecessary_cast

import '../application_application_configuration_run_configuration_application_restore_configuration/application_application_configuration_run_configuration_application_restore_configuration.dart';
import '../application_application_configuration_run_configuration_flink_run_configuration/application_application_configuration_run_configuration_flink_run_configuration.dart';

class ApplicationApplicationConfigurationRunConfiguration {
  /// The restore behavior of a restarting application.
  final ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration?
      applicationRestoreConfiguration;

  /// The starting parameters for a Flink-based Kinesis Data Analytics application.
  final ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration?
      flinkRunConfiguration;

  ApplicationApplicationConfigurationRunConfiguration({
    this.applicationRestoreConfiguration,
    this.flinkRunConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationRestoreConfigurationValue =
        applicationRestoreConfiguration;
    if (applicationRestoreConfigurationValue != null) {
      map['applicationRestoreConfiguration'] =
          applicationRestoreConfigurationValue.toMap();
    }
    final flinkRunConfigurationValue = flinkRunConfiguration;
    if (flinkRunConfigurationValue != null) {
      map['flinkRunConfiguration'] = flinkRunConfigurationValue.toMap();
    }
    return map;
  }

  factory ApplicationApplicationConfigurationRunConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfiguration(
      applicationRestoreConfiguration: map['applicationRestoreConfiguration'] ==
              null
          ? null
          : ApplicationApplicationConfigurationRunConfigurationApplicationRestoreConfiguration
              .fromMap((map['applicationRestoreConfiguration'] as Map)
                  .cast<String, dynamic>()),
      flinkRunConfiguration: map['flinkRunConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration
              .fromMap((map['flinkRunConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

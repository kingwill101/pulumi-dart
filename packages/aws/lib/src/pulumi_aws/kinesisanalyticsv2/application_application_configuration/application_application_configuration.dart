// ignore_for_file: unused_element, unnecessary_cast

import '../application_application_configuration_application_code_configuration/application_application_configuration_application_code_configuration.dart';
import '../application_application_configuration_application_encryption_configuration/application_application_configuration_application_encryption_configuration.dart';
import '../application_application_configuration_application_snapshot_configuration/application_application_configuration_application_snapshot_configuration.dart';
import '../application_application_configuration_environment_properties/application_application_configuration_environment_properties.dart';
import '../application_application_configuration_flink_application_configuration/application_application_configuration_flink_application_configuration.dart';
import '../application_application_configuration_run_configuration/application_application_configuration_run_configuration.dart';
import '../application_application_configuration_sql_application_configuration/application_application_configuration_sql_application_configuration.dart';
import '../application_application_configuration_vpc_configuration/application_application_configuration_vpc_configuration.dart';

class ApplicationApplicationConfiguration {
  /// The code location and type parameters for the application.
  final ApplicationApplicationConfigurationApplicationCodeConfiguration
      applicationCodeConfiguration;

  /// The encryption configuration for the application. This can be used to encrypt data at rest in the application.
  final ApplicationApplicationConfigurationApplicationEncryptionConfiguration?
      applicationEncryptionConfiguration;

  /// Describes whether snapshots are enabled for a Flink-based application.
  final ApplicationApplicationConfigurationApplicationSnapshotConfiguration?
      applicationSnapshotConfiguration;

  /// Describes execution properties for a Flink-based application.
  final ApplicationApplicationConfigurationEnvironmentProperties?
      environmentProperties;

  /// The configuration of a Flink-based application.
  final ApplicationApplicationConfigurationFlinkApplicationConfiguration?
      flinkApplicationConfiguration;

  /// Describes the starting properties for a Flink-based application.
  final ApplicationApplicationConfigurationRunConfiguration? runConfiguration;

  /// The configuration of a SQL-based application.
  final ApplicationApplicationConfigurationSqlApplicationConfiguration?
      sqlApplicationConfiguration;

  /// The VPC configuration of a Flink-based application.
  final ApplicationApplicationConfigurationVpcConfiguration? vpcConfiguration;

  ApplicationApplicationConfiguration({
    required this.applicationCodeConfiguration,
    this.applicationEncryptionConfiguration,
    this.applicationSnapshotConfiguration,
    this.environmentProperties,
    this.flinkApplicationConfiguration,
    this.runConfiguration,
    this.sqlApplicationConfiguration,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationCodeConfiguration'] = applicationCodeConfiguration.toMap();
    final applicationEncryptionConfigurationValue =
        applicationEncryptionConfiguration;
    if (applicationEncryptionConfigurationValue != null) {
      map['applicationEncryptionConfiguration'] =
          applicationEncryptionConfigurationValue.toMap();
    }
    final applicationSnapshotConfigurationValue =
        applicationSnapshotConfiguration;
    if (applicationSnapshotConfigurationValue != null) {
      map['applicationSnapshotConfiguration'] =
          applicationSnapshotConfigurationValue.toMap();
    }
    final environmentPropertiesValue = environmentProperties;
    if (environmentPropertiesValue != null) {
      map['environmentProperties'] = environmentPropertiesValue.toMap();
    }
    final flinkApplicationConfigurationValue = flinkApplicationConfiguration;
    if (flinkApplicationConfigurationValue != null) {
      map['flinkApplicationConfiguration'] =
          flinkApplicationConfigurationValue.toMap();
    }
    final runConfigurationValue = runConfiguration;
    if (runConfigurationValue != null) {
      map['runConfiguration'] = runConfigurationValue.toMap();
    }
    final sqlApplicationConfigurationValue = sqlApplicationConfiguration;
    if (sqlApplicationConfigurationValue != null) {
      map['sqlApplicationConfiguration'] =
          sqlApplicationConfigurationValue.toMap();
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = vpcConfigurationValue.toMap();
    }
    return map;
  }

  factory ApplicationApplicationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfiguration(
      applicationCodeConfiguration:
          ApplicationApplicationConfigurationApplicationCodeConfiguration
              .fromMap((map['applicationCodeConfiguration'] as Map)
                  .cast<String, dynamic>()),
      applicationEncryptionConfiguration: map[
                  'applicationEncryptionConfiguration'] ==
              null
          ? null
          : ApplicationApplicationConfigurationApplicationEncryptionConfiguration
              .fromMap((map['applicationEncryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      applicationSnapshotConfiguration: map[
                  'applicationSnapshotConfiguration'] ==
              null
          ? null
          : ApplicationApplicationConfigurationApplicationSnapshotConfiguration
              .fromMap((map['applicationSnapshotConfiguration'] as Map)
                  .cast<String, dynamic>()),
      environmentProperties: map['environmentProperties'] == null
          ? null
          : ApplicationApplicationConfigurationEnvironmentProperties.fromMap(
              (map['environmentProperties'] as Map).cast<String, dynamic>()),
      flinkApplicationConfiguration:
          map['flinkApplicationConfiguration'] == null
              ? null
              : ApplicationApplicationConfigurationFlinkApplicationConfiguration
                  .fromMap((map['flinkApplicationConfiguration'] as Map)
                      .cast<String, dynamic>()),
      runConfiguration: map['runConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationRunConfiguration.fromMap(
              (map['runConfiguration'] as Map).cast<String, dynamic>()),
      sqlApplicationConfiguration: map['sqlApplicationConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationSqlApplicationConfiguration
              .fromMap((map['sqlApplicationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      vpcConfiguration: map['vpcConfiguration'] == null
          ? null
          : ApplicationApplicationConfigurationVpcConfiguration.fromMap(
              (map['vpcConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

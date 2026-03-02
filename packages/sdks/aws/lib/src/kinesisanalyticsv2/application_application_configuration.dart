// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_application_code_configuration.dart';
import 'application_application_configuration_application_encryption_configuration.dart';
import 'application_application_configuration_application_snapshot_configuration.dart';
import 'application_application_configuration_environment_properties.dart';
import 'application_application_configuration_flink_application_configuration.dart';
import 'application_application_configuration_run_configuration.dart';
import 'application_application_configuration_sql_application_configuration.dart';
import 'application_application_configuration_vpc_configuration.dart';

class ApplicationApplicationConfiguration {
  /// The code location and type parameters for the application.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationCodeConfiguration> applicationCodeConfiguration;
  /// The encryption configuration for the application. This can be used to encrypt data at rest in the application.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationEncryptionConfiguration>? applicationEncryptionConfiguration;
  /// Describes whether snapshots are enabled for a Flink-based application.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationSnapshotConfiguration>? applicationSnapshotConfiguration;
  /// Describes execution properties for a Flink-based application.
  final pulumi.Input<ApplicationApplicationConfigurationEnvironmentProperties>? environmentProperties;
  /// The configuration of a Flink-based application.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfiguration>? flinkApplicationConfiguration;
  /// Describes the starting properties for a Flink-based application.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfiguration>? runConfiguration;
  /// The configuration of a SQL-based application.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfiguration>? sqlApplicationConfiguration;
  /// The VPC configuration of a Flink-based application.
  final pulumi.Input<ApplicationApplicationConfigurationVpcConfiguration>? vpcConfiguration;

  /// Creates a new [ApplicationApplicationConfiguration].
  /// [applicationCodeConfiguration] The code location and type parameters for the application.
  /// [applicationEncryptionConfiguration] The encryption configuration for the application. This can be used to encrypt data at rest in the application.
  /// [applicationSnapshotConfiguration] Describes whether snapshots are enabled for a Flink-based application.
  /// [environmentProperties] Describes execution properties for a Flink-based application.
  /// [flinkApplicationConfiguration] The configuration of a Flink-based application.
  /// [runConfiguration] Describes the starting properties for a Flink-based application.
  /// [sqlApplicationConfiguration] The configuration of a SQL-based application.
  /// [vpcConfiguration] The VPC configuration of a Flink-based application.
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
    return <String, dynamic>{
      'applicationCodeConfiguration': pulumi.Input.mapInputValue<ApplicationApplicationConfigurationApplicationCodeConfiguration, Map<String, dynamic>>(applicationCodeConfiguration, (value) => value.toMap()),
      'applicationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationApplicationEncryptionConfiguration, Map<String, dynamic>>(applicationEncryptionConfiguration, (value) => value.toMap()),
      'applicationSnapshotConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationApplicationSnapshotConfiguration, Map<String, dynamic>>(applicationSnapshotConfiguration, (value) => value.toMap()),
      'environmentProperties': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationEnvironmentProperties, Map<String, dynamic>>(environmentProperties, (value) => value.toMap()),
      'flinkApplicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationFlinkApplicationConfiguration, Map<String, dynamic>>(flinkApplicationConfiguration, (value) => value.toMap()),
      'runConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationRunConfiguration, Map<String, dynamic>>(runConfiguration, (value) => value.toMap()),
      'sqlApplicationConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfiguration, Map<String, dynamic>>(sqlApplicationConfiguration, (value) => value.toMap()),
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfiguration(
      applicationCodeConfiguration: (ApplicationApplicationConfigurationApplicationCodeConfiguration.fromMap((map['applicationCodeConfiguration']! as Map).cast<String, dynamic>())).input(),
      applicationEncryptionConfiguration: map['applicationEncryptionConfiguration'] == null ? null : ((ApplicationApplicationConfigurationApplicationEncryptionConfiguration.fromMap((map['applicationEncryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      applicationSnapshotConfiguration: map['applicationSnapshotConfiguration'] == null ? null : ((ApplicationApplicationConfigurationApplicationSnapshotConfiguration.fromMap((map['applicationSnapshotConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      environmentProperties: map['environmentProperties'] == null ? null : ((ApplicationApplicationConfigurationEnvironmentProperties.fromMap((map['environmentProperties']! as Map).cast<String, dynamic>())).input()).input(),
      flinkApplicationConfiguration: map['flinkApplicationConfiguration'] == null ? null : ((ApplicationApplicationConfigurationFlinkApplicationConfiguration.fromMap((map['flinkApplicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      runConfiguration: map['runConfiguration'] == null ? null : ((ApplicationApplicationConfigurationRunConfiguration.fromMap((map['runConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      sqlApplicationConfiguration: map['sqlApplicationConfiguration'] == null ? null : ((ApplicationApplicationConfigurationSqlApplicationConfiguration.fromMap((map['sqlApplicationConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : ((ApplicationApplicationConfigurationVpcConfiguration.fromMap((map['vpcConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


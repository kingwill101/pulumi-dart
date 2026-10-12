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
  /// Code location and type parameters for the application. See `applicationCodeConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationCodeConfiguration> applicationCodeConfiguration;
  /// Encryption configuration for the application. Use this to encrypt data at rest in the application. See `applicationEncryptionConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationEncryptionConfiguration?>? applicationEncryptionConfiguration;
  /// Snapshot configuration for a Flink-based application. See `applicationSnapshotConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationApplicationSnapshotConfiguration?>? applicationSnapshotConfiguration;
  /// Execution properties for a Flink-based application. See `environmentProperties` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationEnvironmentProperties?>? environmentProperties;
  /// Configuration of a Flink-based application. See `flinkApplicationConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationFlinkApplicationConfiguration?>? flinkApplicationConfiguration;
  /// Starting properties for a Flink-based application. See `runConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationRunConfiguration?>? runConfiguration;
  /// Configuration of a SQL-based application. See `sqlApplicationConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfiguration?>? sqlApplicationConfiguration;
  /// VPC configuration of a Flink-based application. See `vpcConfiguration` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationVpcConfiguration?>? vpcConfiguration;

  /// Creates a new [ApplicationApplicationConfiguration].
  /// [applicationCodeConfiguration] Code location and type parameters for the application. See `applicationCodeConfiguration` Block below.
  /// [applicationEncryptionConfiguration] Encryption configuration for the application. Use this to encrypt data at rest in the application. See `applicationEncryptionConfiguration` Block below.
  /// [applicationSnapshotConfiguration] Snapshot configuration for a Flink-based application. See `applicationSnapshotConfiguration` Block below.
  /// [environmentProperties] Execution properties for a Flink-based application. See `environmentProperties` Block below.
  /// [flinkApplicationConfiguration] Configuration of a Flink-based application. See `flinkApplicationConfiguration` Block below.
  /// [runConfiguration] Starting properties for a Flink-based application. See `runConfiguration` Block below.
  /// [sqlApplicationConfiguration] Configuration of a SQL-based application. See `sqlApplicationConfiguration` Block below.
  /// [vpcConfiguration] VPC configuration of a Flink-based application. See `vpcConfiguration` Block below.
  const ApplicationApplicationConfiguration({
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
      applicationCodeConfiguration: pulumi.Input.fromValue(ApplicationApplicationConfigurationApplicationCodeConfiguration.fromMap((map['applicationCodeConfiguration']! as Map).cast<String, dynamic>())),
      applicationEncryptionConfiguration: (() { final guardedValue = map['applicationEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationApplicationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationSnapshotConfiguration: (() { final guardedValue = map['applicationSnapshotConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationApplicationSnapshotConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentProperties: (() { final guardedValue = map['environmentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationEnvironmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flinkApplicationConfiguration: (() { final guardedValue = map['flinkApplicationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationFlinkApplicationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runConfiguration: (() { final guardedValue = map['runConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationRunConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlApplicationConfiguration: (() { final guardedValue = map['sqlApplicationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'external_installation_software_configuration.dart';
import 'os_sap_configuration.dart';
import 'single_server_configuration.dart';

/// Deployment along with OS Configuration.
class DeploymentWithOSConfiguration {
  /// The geo-location where the SAP system is to be created.
  final String? appLocation;
  /// The configuration Type.
  /// Expected value is 'DeploymentWithOSConfig'.
  final String configurationType;
  /// The infrastructure configuration.
  final SingleServerConfiguration? infrastructureConfiguration;
  /// The OS and SAP configuration.
  final OsSapConfiguration? osSapConfiguration;
  /// The software configuration.
  final ExternalInstallationSoftwareConfiguration? softwareConfiguration;

  /// Creates a new [DeploymentWithOSConfiguration].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [osSapConfiguration] The OS and SAP configuration.
  /// [softwareConfiguration] The software configuration.
  DeploymentWithOSConfiguration({
    this.appLocation,
    required this.configurationType,
    this.infrastructureConfiguration,
    this.osSapConfiguration,
    this.softwareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'configurationType': configurationType,
      'infrastructureConfiguration': ?infrastructureConfiguration == null ? null : infrastructureConfiguration!.toMap(),
      'osSapConfiguration': ?osSapConfiguration == null ? null : osSapConfiguration!.toMap(),
      'softwareConfiguration': ?softwareConfiguration == null ? null : softwareConfiguration!.toMap(),
    };
  }

  factory DeploymentWithOSConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentWithOSConfiguration(
      appLocation: map['appLocation'] == null ? null : map['appLocation'] as String,
      configurationType: map['configurationType'] as String,
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : SingleServerConfiguration.fromMap((map['infrastructureConfiguration'] as Map).cast<String, dynamic>()),
      osSapConfiguration: map['osSapConfiguration'] == null ? null : OsSapConfiguration.fromMap((map['osSapConfiguration'] as Map).cast<String, dynamic>()),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : ExternalInstallationSoftwareConfiguration.fromMap((map['softwareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


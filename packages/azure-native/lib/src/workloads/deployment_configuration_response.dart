// ignore_for_file: unused_element, unnecessary_cast

import 'external_installation_software_configuration_response.dart';
import 'single_server_configuration_response.dart';

/// Deployment Configuration.
class DeploymentConfigurationResponse {
  /// The geo-location where the SAP system is to be created.
  final String? appLocation;
  /// The configuration Type.
  /// Expected value is 'Deployment'.
  final String configurationType;
  /// The infrastructure configuration.
  final SingleServerConfigurationResponse? infrastructureConfiguration;
  /// The software configuration.
  final ExternalInstallationSoftwareConfigurationResponse? softwareConfiguration;

  /// Creates a new [DeploymentConfigurationResponse].
  /// [appLocation] The geo-location where the SAP system is to be created.
  /// [configurationType] The configuration Type.
  /// [infrastructureConfiguration] The infrastructure configuration.
  /// [softwareConfiguration] The software configuration.
  DeploymentConfigurationResponse({
    this.appLocation,
    required this.configurationType,
    this.infrastructureConfiguration,
    this.softwareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'configurationType': configurationType,
      'infrastructureConfiguration': ?infrastructureConfiguration == null ? null : infrastructureConfiguration!.toMap(),
      'softwareConfiguration': ?softwareConfiguration == null ? null : softwareConfiguration!.toMap(),
    };
  }

  factory DeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigurationResponse(
      appLocation: map['appLocation'] == null ? null : map['appLocation'] as String,
      configurationType: map['configurationType'] as String,
      infrastructureConfiguration: map['infrastructureConfiguration'] == null ? null : SingleServerConfigurationResponse.fromMap((map['infrastructureConfiguration'] as Map).cast<String, dynamic>()),
      softwareConfiguration: map['softwareConfiguration'] == null ? null : ExternalInstallationSoftwareConfigurationResponse.fromMap((map['softwareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


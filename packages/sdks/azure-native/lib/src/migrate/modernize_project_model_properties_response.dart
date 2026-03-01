// ignore_for_file: unused_element, unnecessary_cast

import 'migration_configuration_response.dart';

/// ModernizeProject properties.
class ModernizeProjectModelPropertiesResponse {
  /// MigrationConfiguration properties.
  final MigrationConfigurationResponse? migrationConfiguration;
  /// Gets or sets the provisioning state of the ModernizeProject.
  final String provisioningState;
  /// Gets or sets the service endpoint.
  final String serviceEndpoint;
  /// Gets or sets the service resource Id.
  final String serviceResourceId;

  /// Creates a new [ModernizeProjectModelPropertiesResponse].
  /// [migrationConfiguration] MigrationConfiguration properties.
  /// [provisioningState] Gets or sets the provisioning state of the ModernizeProject.
  /// [serviceEndpoint] Gets or sets the service endpoint.
  /// [serviceResourceId] Gets or sets the service resource Id.
  ModernizeProjectModelPropertiesResponse({
    this.migrationConfiguration,
    required this.provisioningState,
    required this.serviceEndpoint,
    required this.serviceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationConfiguration': ?migrationConfiguration == null ? null : migrationConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
    };
  }

  factory ModernizeProjectModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectModelPropertiesResponse(
      migrationConfiguration: map['migrationConfiguration'] == null ? null : MigrationConfigurationResponse.fromMap((map['migrationConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      serviceResourceId: map['serviceResourceId'] as String,
    );
  }
}


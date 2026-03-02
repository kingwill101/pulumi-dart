// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_configuration_response.dart';

/// ModernizeProject properties.
class ModernizeProjectModelPropertiesResponse {
  /// MigrationConfiguration properties.
  final pulumi.Input<MigrationConfigurationResponse>? migrationConfiguration;
  /// Gets or sets the provisioning state of the ModernizeProject.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the service endpoint.
  final pulumi.Input<String> serviceEndpoint;
  /// Gets or sets the service resource Id.
  final pulumi.Input<String> serviceResourceId;

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
      'migrationConfiguration': ?pulumi.Input.mapOptionalInputValue<MigrationConfigurationResponse, Map<String, dynamic>>(migrationConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
    };
  }

  factory ModernizeProjectModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectModelPropertiesResponse(
      migrationConfiguration: map['migrationConfiguration'] == null ? null : (MigrationConfigurationResponse.fromMap((map['migrationConfiguration']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      serviceEndpoint: (map['serviceEndpoint'] as String).input(),
      serviceResourceId: (map['serviceResourceId'] as String).input(),
    );
  }
}


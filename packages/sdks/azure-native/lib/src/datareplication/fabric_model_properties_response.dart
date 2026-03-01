// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_stack_hcifabric_model_custom_properties_response.dart';
import 'health_error_model_response.dart';

/// Fabric model properties.
class FabricModelPropertiesResponse {
  /// Fabric model custom properties.
  final AzStackHCIFabricModelCustomPropertiesResponse customProperties;
  /// Gets or sets the fabric health.
  final String health;
  /// Gets or sets the list of health errors.
  final List<HealthErrorModelResponse> healthErrors;
  /// Gets or sets the provisioning state of the fabric.
  final String provisioningState;
  /// Gets or sets the service endpoint.
  final String serviceEndpoint;
  /// Gets or sets the service resource Id.
  final String serviceResourceId;

  /// Creates a new [FabricModelPropertiesResponse].
  /// [customProperties] Fabric model custom properties.
  /// [health] Gets or sets the fabric health.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [provisioningState] Gets or sets the provisioning state of the fabric.
  /// [serviceEndpoint] Gets or sets the service endpoint.
  /// [serviceResourceId] Gets or sets the service resource Id.
  FabricModelPropertiesResponse({
    required this.customProperties,
    required this.health,
    required this.healthErrors,
    required this.provisioningState,
    required this.serviceEndpoint,
    required this.serviceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': customProperties.toMap(),
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
    };
  }

  factory FabricModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FabricModelPropertiesResponse(
      customProperties: AzStackHCIFabricModelCustomPropertiesResponse.fromMap((map['customProperties'] as Map).cast<String, dynamic>()),
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors'], (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      serviceResourceId: map['serviceResourceId'] as String,
    );
  }
}


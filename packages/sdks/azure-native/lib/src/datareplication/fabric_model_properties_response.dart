// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'az_stack_hcifabric_model_custom_properties_response.dart';
import 'health_error_model_response.dart';

/// Fabric model properties.
class FabricModelPropertiesResponse {
  /// Fabric model custom properties.
  final pulumi.Input<AzStackHCIFabricModelCustomPropertiesResponse> customProperties;
  /// Gets or sets the fabric health.
  final pulumi.Input<String> health;
  /// Gets or sets the list of health errors.
  final pulumi.Input<List<HealthErrorModelResponse>> healthErrors;
  /// Gets or sets the provisioning state of the fabric.
  final pulumi.Input<String> provisioningState;
  /// Gets or sets the service endpoint.
  final pulumi.Input<String> serviceEndpoint;
  /// Gets or sets the service resource Id.
  final pulumi.Input<String> serviceResourceId;

  /// Creates a new [FabricModelPropertiesResponse].
  /// [customProperties] Fabric model custom properties.
  /// [health] Gets or sets the fabric health.
  /// [healthErrors] Gets or sets the list of health errors.
  /// [provisioningState] Gets or sets the provisioning state of the fabric.
  /// [serviceEndpoint] Gets or sets the service endpoint.
  /// [serviceResourceId] Gets or sets the service resource Id.
  const FabricModelPropertiesResponse({
    required this.customProperties,
    required this.health,
    required this.healthErrors,
    required this.provisioningState,
    required this.serviceEndpoint,
    required this.serviceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProperties': pulumi.Input.mapInputValue<AzStackHCIFabricModelCustomPropertiesResponse, Map<String, dynamic>>(customProperties, (value) => value.toMap()),
      'health': health,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorModelResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorModelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
    };
  }

  factory FabricModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FabricModelPropertiesResponse(
      customProperties: pulumi.Input.fromValue(AzStackHCIFabricModelCustomPropertiesResponse.fromMap((map['customProperties']! as Map).cast<String, dynamic>())),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorModelResponse>(map['healthErrors']!, (value) => HealthErrorModelResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceEndpoint: pulumi.Input.fromValue(map['serviceEndpoint'] as String),
      serviceResourceId: pulumi.Input.fromValue(map['serviceResourceId'] as String),
    );
  }
}

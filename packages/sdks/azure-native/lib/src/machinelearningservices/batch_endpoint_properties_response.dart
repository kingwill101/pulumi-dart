// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_endpoint_defaults_response.dart';

/// Batch endpoint configuration.
class BatchEndpointPropertiesResponse {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final pulumi.Input<String> authMode;
  /// Default values for Batch Endpoint
  final pulumi.Input<BatchEndpointDefaultsResponse?>? defaults;
  /// Description of the inference endpoint.
  final pulumi.Input<String?>? description;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the endpoint.
  final pulumi.Input<String> provisioningState;
  /// Endpoint URI.
  final pulumi.Input<String> scoringUri;
  /// Endpoint Swagger URI.
  final pulumi.Input<String> swaggerUri;

  /// Creates a new [BatchEndpointPropertiesResponse].
  /// [authMode] [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  /// [defaults] Default values for Batch Endpoint
  /// [description] Description of the inference endpoint.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint.
  /// [scoringUri] Endpoint URI.
  /// [swaggerUri] Endpoint Swagger URI.
  const BatchEndpointPropertiesResponse({
    required this.authMode,
    this.defaults,
    this.description,
    this.properties,
    required this.provisioningState,
    required this.scoringUri,
    required this.swaggerUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'defaults': ?pulumi.Input.mapOptionalInputValue<BatchEndpointDefaultsResponse, Map<String, dynamic>>(defaults, (value) => value.toMap()),
      'description': ?description,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'scoringUri': scoringUri,
      'swaggerUri': swaggerUri,
    };
  }

  factory BatchEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BatchEndpointPropertiesResponse(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      defaults: (() { final guardedValue = map['defaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchEndpointDefaultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      scoringUri: pulumi.Input.fromValue(map['scoringUri'] as String),
      swaggerUri: pulumi.Input.fromValue(map['swaggerUri'] as String),
    );
  }
}

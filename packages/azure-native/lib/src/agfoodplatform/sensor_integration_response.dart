// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_response.dart';

/// Sensor integration request model.
class SensorIntegrationResponse {
  /// Sensor integration enable state.
  final String? enabled;
  /// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.).
  final ErrorResponseResponse? provisioningInfo;
  /// Sensor integration instance provisioning state.
  final String provisioningState;

  /// Creates a new [SensorIntegrationResponse].
  /// [enabled] Sensor integration enable state.
  /// [provisioningInfo] Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.).
  /// [provisioningState] Sensor integration instance provisioning state.
  SensorIntegrationResponse({
    this.enabled,
    this.provisioningInfo,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'provisioningInfo': ?provisioningInfo == null ? null : provisioningInfo!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory SensorIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return SensorIntegrationResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      provisioningInfo: map['provisioningInfo'] == null ? null : ErrorResponseResponse.fromMap((map['provisioningInfo'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}


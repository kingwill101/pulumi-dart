// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';

/// Sensor integration request model.
class SensorIntegrationResponse {
  /// Sensor integration enable state.
  final pulumi.Input<String>? enabled;
  /// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.).
  final pulumi.Input<ErrorResponseResponse>? provisioningInfo;
  /// Sensor integration instance provisioning state.
  final pulumi.Input<String> provisioningState;

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
      'provisioningInfo': ?pulumi.Input.mapOptionalInputValue<ErrorResponseResponse, Map<String, dynamic>>(provisioningInfo, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory SensorIntegrationResponse.fromMap(Map<String, dynamic> map) {
    return SensorIntegrationResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      provisioningInfo: map['provisioningInfo'] == null ? null : (ErrorResponseResponse.fromMap((map['provisioningInfo']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}


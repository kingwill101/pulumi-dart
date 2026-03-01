// ignore_for_file: unused_element, unnecessary_cast

import 'model_discovery_settings_response.dart';

/// HealthModel properties
class HealthModelPropertiesResponse {
  /// Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  final ModelDiscoverySettingsResponse? discovery;
  /// The status of the last operation.
  final String provisioningState;
  /// The data plane endpoint for querying health data
  final String queryEndpoint;

  /// Creates a new [HealthModelPropertiesResponse].
  /// [discovery] Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  /// [provisioningState] The status of the last operation.
  /// [queryEndpoint] The data plane endpoint for querying health data
  HealthModelPropertiesResponse({
    this.discovery,
    required this.provisioningState,
    required this.queryEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discovery': ?discovery == null ? null : discovery!.toMap(),
      'provisioningState': provisioningState,
      'queryEndpoint': queryEndpoint,
    };
  }

  factory HealthModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesResponse(
      discovery: map['discovery'] == null ? null : ModelDiscoverySettingsResponse.fromMap((map['discovery'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      queryEndpoint: map['queryEndpoint'] as String,
    );
  }
}


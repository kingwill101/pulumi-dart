// ignore_for_file: unused_element, unnecessary_cast

import 'model_discovery_settings_response.dart';

/// HealthModel properties
class HealthModelPropertiesResponse {
  /// The data plane endpoint for interacting with health data
  final String dataplaneEndpoint;
  /// Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  final ModelDiscoverySettingsResponse? discovery;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [HealthModelPropertiesResponse].
  /// [dataplaneEndpoint] The data plane endpoint for interacting with health data
  /// [discovery] Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  /// [provisioningState] The status of the last operation.
  HealthModelPropertiesResponse({
    required this.dataplaneEndpoint,
    this.discovery,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataplaneEndpoint': dataplaneEndpoint,
      'discovery': ?discovery == null ? null : discovery!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory HealthModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesResponse(
      dataplaneEndpoint: map['dataplaneEndpoint'] as String,
      discovery: map['discovery'] == null ? null : ModelDiscoverySettingsResponse.fromMap((map['discovery'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}


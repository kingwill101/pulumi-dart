// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_discovery_settings_response.dart';

/// HealthModel properties
class HealthModelPropertiesResponse {
  /// The data plane endpoint for interacting with health data
  final pulumi.Input<String> dataplaneEndpoint;
  /// Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  final pulumi.Input<ModelDiscoverySettingsResponse>? discovery;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

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
      'discovery': ?pulumi.Input.mapOptionalInputValue<ModelDiscoverySettingsResponse, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory HealthModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesResponse(
      dataplaneEndpoint: pulumi.Input.fromValue(map['dataplaneEndpoint'] as String),
      discovery: (() { final guardedValue = map['discovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelDiscoverySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}


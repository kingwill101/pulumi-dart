// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_discovery_settings_response.dart';

/// HealthModel properties
class HealthModelPropertiesResponse {
  /// Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  final pulumi.Input<ModelDiscoverySettingsResponse>? discovery;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The data plane endpoint for querying health data
  final pulumi.Input<String> queryEndpoint;

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
      'discovery': ?pulumi.Input.mapOptionalInputValue<ModelDiscoverySettingsResponse, Map<String, dynamic>>(discovery, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'queryEndpoint': queryEndpoint,
    };
  }

  factory HealthModelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HealthModelPropertiesResponse(
      discovery: map['discovery'] == null ? null : (ModelDiscoverySettingsResponse.fromMap((map['discovery']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      queryEndpoint: (map['queryEndpoint'] as String).input(),
    );
  }
}


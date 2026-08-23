// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_health_status_response.dart';

/// AkriService status.
class AkriServiceStatusResponse {
  /// The health state of the AkriService.
  final pulumi.Input<ResourceHealthStatusResponse> healthState;

  /// Creates a new [AkriServiceStatusResponse].
  /// [healthState] The health state of the AkriService.
  const AkriServiceStatusResponse({
    required this.healthState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthState': pulumi.Input.mapInputValue<ResourceHealthStatusResponse, Map<String, dynamic>>(healthState, (value) => value.toMap()),
    };
  }

  factory AkriServiceStatusResponse.fromMap(Map<String, dynamic> map) {
    return AkriServiceStatusResponse(
      healthState: pulumi.Input.fromValue(ResourceHealthStatusResponse.fromMap((map['healthState']! as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';

class InferenceContainerPropertiesResponse {
  /// The route to check the liveness of the inference server container.
  final pulumi.Input<RouteResponse?>? livenessRoute;
  /// The route to check the readiness of the inference server container.
  final pulumi.Input<RouteResponse?>? readinessRoute;
  /// The port to send the scoring requests to, within the inference server container.
  final pulumi.Input<RouteResponse?>? scoringRoute;

  /// Creates a new [InferenceContainerPropertiesResponse].
  /// [livenessRoute] The route to check the liveness of the inference server container.
  /// [readinessRoute] The route to check the readiness of the inference server container.
  /// [scoringRoute] The port to send the scoring requests to, within the inference server container.
  const InferenceContainerPropertiesResponse({
    this.livenessRoute,
    this.readinessRoute,
    this.scoringRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livenessRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(livenessRoute, (value) => value.toMap()),
      'readinessRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(readinessRoute, (value) => value.toMap()),
      'scoringRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(scoringRoute, (value) => value.toMap()),
    };
  }

  factory InferenceContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InferenceContainerPropertiesResponse(
      livenessRoute: (() { final guardedValue = map['livenessRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readinessRoute: (() { final guardedValue = map['readinessRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scoringRoute: (() { final guardedValue = map['scoringRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

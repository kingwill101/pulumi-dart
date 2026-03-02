// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';

class InferenceContainerPropertiesResponse {
  /// The route to check the liveness of the inference server container.
  final pulumi.Input<RouteResponse>? livenessRoute;
  /// The route to check the readiness of the inference server container.
  final pulumi.Input<RouteResponse>? readinessRoute;
  /// The port to send the scoring requests to, within the inference server container.
  final pulumi.Input<RouteResponse>? scoringRoute;
  /// The route to check the startup of the application in the container.
  final pulumi.Input<RouteResponse>? startupRoute;

  /// Creates a new [InferenceContainerPropertiesResponse].
  /// [livenessRoute] The route to check the liveness of the inference server container.
  /// [readinessRoute] The route to check the readiness of the inference server container.
  /// [scoringRoute] The port to send the scoring requests to, within the inference server container.
  /// [startupRoute] The route to check the startup of the application in the container.
  InferenceContainerPropertiesResponse({
    this.livenessRoute,
    this.readinessRoute,
    this.scoringRoute,
    this.startupRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livenessRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(livenessRoute, (value) => value.toMap()),
      'readinessRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(readinessRoute, (value) => value.toMap()),
      'scoringRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(scoringRoute, (value) => value.toMap()),
      'startupRoute': ?pulumi.Input.mapOptionalInputValue<RouteResponse, Map<String, dynamic>>(startupRoute, (value) => value.toMap()),
    };
  }

  factory InferenceContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InferenceContainerPropertiesResponse(
      livenessRoute: map['livenessRoute'] == null ? null : (RouteResponse.fromMap((map['livenessRoute']! as Map).cast<String, dynamic>())).input(),
      readinessRoute: map['readinessRoute'] == null ? null : (RouteResponse.fromMap((map['readinessRoute']! as Map).cast<String, dynamic>())).input(),
      scoringRoute: map['scoringRoute'] == null ? null : (RouteResponse.fromMap((map['scoringRoute']! as Map).cast<String, dynamic>())).input(),
      startupRoute: map['startupRoute'] == null ? null : (RouteResponse.fromMap((map['startupRoute']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


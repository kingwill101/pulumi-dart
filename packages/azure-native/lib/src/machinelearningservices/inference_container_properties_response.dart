// ignore_for_file: unused_element, unnecessary_cast

import 'route_response.dart';

class InferenceContainerPropertiesResponse {
  /// The route to check the liveness of the inference server container.
  final RouteResponse? livenessRoute;
  /// The route to check the readiness of the inference server container.
  final RouteResponse? readinessRoute;
  /// The port to send the scoring requests to, within the inference server container.
  final RouteResponse? scoringRoute;
  /// The route to check the startup of the application in the container.
  final RouteResponse? startupRoute;

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
      'livenessRoute': ?livenessRoute == null ? null : livenessRoute!.toMap(),
      'readinessRoute': ?readinessRoute == null ? null : readinessRoute!.toMap(),
      'scoringRoute': ?scoringRoute == null ? null : scoringRoute!.toMap(),
      'startupRoute': ?startupRoute == null ? null : startupRoute!.toMap(),
    };
  }

  factory InferenceContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InferenceContainerPropertiesResponse(
      livenessRoute: map['livenessRoute'] == null ? null : RouteResponse.fromMap((map['livenessRoute'] as Map).cast<String, dynamic>()),
      readinessRoute: map['readinessRoute'] == null ? null : RouteResponse.fromMap((map['readinessRoute'] as Map).cast<String, dynamic>()),
      scoringRoute: map['scoringRoute'] == null ? null : RouteResponse.fromMap((map['scoringRoute'] as Map).cast<String, dynamic>()),
      startupRoute: map['startupRoute'] == null ? null : RouteResponse.fromMap((map['startupRoute'] as Map).cast<String, dynamic>()),
    );
  }
}


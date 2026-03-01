// ignore_for_file: unused_element, unnecessary_cast

import 'route.dart';

class InferenceContainerProperties {
  /// The route to check the liveness of the inference server container.
  final Route? livenessRoute;
  /// The route to check the readiness of the inference server container.
  final Route? readinessRoute;
  /// The port to send the scoring requests to, within the inference server container.
  final Route? scoringRoute;
  /// The route to check the startup of the application in the container.
  final Route? startupRoute;

  /// Creates a new [InferenceContainerProperties].
  /// [livenessRoute] The route to check the liveness of the inference server container.
  /// [readinessRoute] The route to check the readiness of the inference server container.
  /// [scoringRoute] The port to send the scoring requests to, within the inference server container.
  /// [startupRoute] The route to check the startup of the application in the container.
  InferenceContainerProperties({
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

  factory InferenceContainerProperties.fromMap(Map<String, dynamic> map) {
    return InferenceContainerProperties(
      livenessRoute: map['livenessRoute'] == null ? null : Route.fromMap((map['livenessRoute'] as Map).cast<String, dynamic>()),
      readinessRoute: map['readinessRoute'] == null ? null : Route.fromMap((map['readinessRoute'] as Map).cast<String, dynamic>()),
      scoringRoute: map['scoringRoute'] == null ? null : Route.fromMap((map['scoringRoute'] as Map).cast<String, dynamic>()),
      startupRoute: map['startupRoute'] == null ? null : Route.fromMap((map['startupRoute'] as Map).cast<String, dynamic>()),
    );
  }
}


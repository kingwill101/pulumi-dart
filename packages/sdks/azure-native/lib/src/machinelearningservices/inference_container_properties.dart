// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route.dart';

class InferenceContainerProperties {
  /// The route to check the liveness of the inference server container.
  final pulumi.Input<Route>? livenessRoute;
  /// The route to check the readiness of the inference server container.
  final pulumi.Input<Route>? readinessRoute;
  /// The port to send the scoring requests to, within the inference server container.
  final pulumi.Input<Route>? scoringRoute;
  /// The route to check the startup of the application in the container.
  final pulumi.Input<Route>? startupRoute;

  /// Creates a new [InferenceContainerProperties].
  /// [livenessRoute] The route to check the liveness of the inference server container.
  /// [readinessRoute] The route to check the readiness of the inference server container.
  /// [scoringRoute] The port to send the scoring requests to, within the inference server container.
  /// [startupRoute] The route to check the startup of the application in the container.
  const InferenceContainerProperties({
    this.livenessRoute,
    this.readinessRoute,
    this.scoringRoute,
    this.startupRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livenessRoute': ?pulumi.Input.mapOptionalInputValue<Route, Map<String, dynamic>>(livenessRoute, (value) => value.toMap()),
      'readinessRoute': ?pulumi.Input.mapOptionalInputValue<Route, Map<String, dynamic>>(readinessRoute, (value) => value.toMap()),
      'scoringRoute': ?pulumi.Input.mapOptionalInputValue<Route, Map<String, dynamic>>(scoringRoute, (value) => value.toMap()),
      'startupRoute': ?pulumi.Input.mapOptionalInputValue<Route, Map<String, dynamic>>(startupRoute, (value) => value.toMap()),
    };
  }

  factory InferenceContainerProperties.fromMap(Map<String, dynamic> map) {
    return InferenceContainerProperties(
      livenessRoute: (() { final guardedValue = map['livenessRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Route.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readinessRoute: (() { final guardedValue = map['readinessRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Route.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scoringRoute: (() { final guardedValue = map['scoringRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Route.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupRoute: (() { final guardedValue = map['startupRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Route.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


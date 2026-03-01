// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_gateway_properties_response_bounds.dart';

/// Configuration for auto scaling.
class ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration {
  /// Minimum and maximum number of scale units to deploy.
  final ExpressRouteGatewayPropertiesResponseBounds? bounds;

  /// Creates a new [ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration].
  /// [bounds] Minimum and maximum number of scale units to deploy.
  ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?bounds == null ? null : bounds!.toMap(),
    };
  }

  factory ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration.fromMap(Map<String, dynamic> map) {
    return ExpressRouteGatewayPropertiesResponseAutoScaleConfiguration(
      bounds: map['bounds'] == null ? null : ExpressRouteGatewayPropertiesResponseBounds.fromMap((map['bounds'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrichment_properties.dart';
import 'fallback_route_properties.dart';
import 'route_properties.dart';
import 'routing_endpoints.dart';

/// The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
class RoutingProperties {
  /// The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
  final pulumi.Input<RoutingEndpoints>? endpoints;
  /// The list of user-provided enrichments that the IoT hub applies to messages to be delivered to built-in and custom endpoints. See: https://aka.ms/telemetryoneventgrid
  final pulumi.Input<List<EnrichmentProperties>>? enrichments;
  /// The properties of the route that is used as a fall-back route when none of the conditions specified in the 'routes' section are met. This is an optional parameter. When this property is not present in the template, the fallback route is disabled by default.
  final pulumi.Input<FallbackRouteProperties>? fallbackRoute;
  /// The list of user-provided routing rules that the IoT hub uses to route messages to built-in and custom endpoints. A maximum of 100 routing rules are allowed for paid hubs and a maximum of 5 routing rules are allowed for free hubs.
  final pulumi.Input<List<RouteProperties>>? routes;

  /// Creates a new [RoutingProperties].
  /// [endpoints] The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
  /// [enrichments] The list of user-provided enrichments that the IoT hub applies to messages to be delivered to built-in and custom endpoints. See: https://aka.ms/telemetryoneventgrid
  /// [fallbackRoute] The properties of the route that is used as a fall-back route when none of the conditions specified in the 'routes' section are met. This is an optional parameter. When this property is not present in the template, the fallback route is disabled by default.
  /// [routes] The list of user-provided routing rules that the IoT hub uses to route messages to built-in and custom endpoints. A maximum of 100 routing rules are allowed for paid hubs and a maximum of 5 routing rules are allowed for free hubs.
  const RoutingProperties({
    this.endpoints,
    this.enrichments,
    this.fallbackRoute,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<RoutingEndpoints, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'enrichments': ?pulumi.Input.mapOptionalInputValue<List<EnrichmentProperties>, List<Map<String, dynamic>>>(enrichments, (value) => pulumi.Input.encodeList<EnrichmentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackRoute': ?pulumi.Input.mapOptionalInputValue<FallbackRouteProperties, Map<String, dynamic>>(fallbackRoute, (value) => value.toMap()),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteProperties>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingProperties.fromMap(Map<String, dynamic> map) {
    return RoutingProperties(
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingEndpoints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichments: (() { final guardedValue = map['enrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnrichmentProperties>(guardedValue, (value) => EnrichmentProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fallbackRoute: (() { final guardedValue = map['fallbackRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FallbackRouteProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteProperties>(guardedValue, (value) => RouteProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


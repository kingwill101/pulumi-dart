// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrichment_properties_response.dart';
import 'fallback_route_properties_response.dart';
import 'route_properties_response.dart';
import 'routing_endpoints_response.dart';

/// The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
class RoutingPropertiesResponse {
  /// The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
  final pulumi.Input<RoutingEndpointsResponse>? endpoints;
  /// The list of user-provided enrichments that the IoT hub applies to messages to be delivered to built-in and custom endpoints. See: https://aka.ms/telemetryoneventgrid
  final pulumi.Input<List<EnrichmentPropertiesResponse>>? enrichments;
  /// The properties of the route that is used as a fall-back route when none of the conditions specified in the 'routes' section are met. This is an optional parameter. When this property is not present in the template, the fallback route is disabled by default.
  final pulumi.Input<FallbackRoutePropertiesResponse>? fallbackRoute;
  /// The list of user-provided routing rules that the IoT hub uses to route messages to built-in and custom endpoints. A maximum of 100 routing rules are allowed for paid hubs and a maximum of 5 routing rules are allowed for free hubs.
  final pulumi.Input<List<RoutePropertiesResponse>>? routes;

  /// Creates a new [RoutingPropertiesResponse].
  /// [endpoints] The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.
  /// [enrichments] The list of user-provided enrichments that the IoT hub applies to messages to be delivered to built-in and custom endpoints. See: https://aka.ms/telemetryoneventgrid
  /// [fallbackRoute] The properties of the route that is used as a fall-back route when none of the conditions specified in the 'routes' section are met. This is an optional parameter. When this property is not present in the template, the fallback route is disabled by default.
  /// [routes] The list of user-provided routing rules that the IoT hub uses to route messages to built-in and custom endpoints. A maximum of 100 routing rules are allowed for paid hubs and a maximum of 5 routing rules are allowed for free hubs.
  RoutingPropertiesResponse({
    this.endpoints,
    this.enrichments,
    this.fallbackRoute,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<RoutingEndpointsResponse, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'enrichments': ?pulumi.Input.mapOptionalInputValue<List<EnrichmentPropertiesResponse>, List<Map<String, dynamic>>>(enrichments, (value) => pulumi.Input.encodeList<EnrichmentPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackRoute': ?pulumi.Input.mapOptionalInputValue<FallbackRoutePropertiesResponse, Map<String, dynamic>>(fallbackRoute, (value) => value.toMap()),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RoutePropertiesResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RoutePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RoutingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutingPropertiesResponse(
      endpoints: map['endpoints'] == null ? null : (RoutingEndpointsResponse.fromMap((map['endpoints'] as Map).cast<String, dynamic>())).input(),
      enrichments: map['enrichments'] == null ? null : (pulumi.Input.decodeList<EnrichmentPropertiesResponse>(map['enrichments'], (value) => EnrichmentPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fallbackRoute: map['fallbackRoute'] == null ? null : (FallbackRoutePropertiesResponse.fromMap((map['fallbackRoute'] as Map).cast<String, dynamic>())).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<RoutePropertiesResponse>(map['routes'], (value) => RoutePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


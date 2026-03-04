// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_api_route.dart';
import 'gateway_route_config_open_api_properties.dart';

/// API route config of the Spring Cloud Gateway
class GatewayRouteConfigProperties {
  /// The resource Id of the Azure Spring Apps app, required unless route defines `uri`.
  final pulumi.Input<String>? appResourceId;

  /// To modify the request before sending it to the target endpoint, or the received response in app level.
  final pulumi.Input<List<String>>? filters;

  /// OpenAPI properties of Spring Cloud Gateway route config.
  final pulumi.Input<GatewayRouteConfigOpenApiProperties>? openApi;

  /// A number of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>>? predicates;

  /// Protocol of routed Azure Spring Apps applications.
  final pulumi.Input<String>? protocol;

  /// Array of API routes, each route contains properties such as `title`, `uri`, `ssoEnabled`, `predicates`, `filters`.
  final pulumi.Input<List<GatewayApiRoute>>? routes;

  /// Enable Single Sign-On in app level.
  final pulumi.Input<bool>? ssoEnabled;

  /// Creates a new [GatewayRouteConfigProperties].
  /// [appResourceId] The resource Id of the Azure Spring Apps app, required unless route defines `uri`.
  /// [filters] To modify the request before sending it to the target endpoint, or the received response in app level.
  /// [openApi] OpenAPI properties of Spring Cloud Gateway route config.
  /// [predicates] A number of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [protocol] Protocol of routed Azure Spring Apps applications.
  /// [routes] Array of API routes, each route contains properties such as `title`, `uri`, `ssoEnabled`, `predicates`, `filters`.
  /// [ssoEnabled] Enable Single Sign-On in app level.
  GatewayRouteConfigProperties({
    this.appResourceId,
    this.filters,
    this.openApi,
    this.predicates,
    this.protocol,
    this.routes,
    this.ssoEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceId': ?appResourceId,
      'filters': ?filters,
      'openApi':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayRouteConfigOpenApiProperties,
            Map<String, dynamic>
          >(openApi, (value) => value.toMap()),
      'predicates': ?predicates,
      'protocol': ?protocol,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GatewayApiRoute>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<GatewayApiRoute, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'ssoEnabled': ?ssoEnabled,
    };
  }

  factory GatewayRouteConfigProperties.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigProperties(
      appResourceId: (() {
        final guardedValue = map['appResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      openApi: (() {
        final guardedValue = map['openApi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayRouteConfigOpenApiProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      predicates: (() {
        final guardedValue = map['predicates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GatewayApiRoute>(
            guardedValue,
            (value) =>
                GatewayApiRoute.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      ssoEnabled: (() {
        final guardedValue = map['ssoEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_api_route_response.dart';
import 'gateway_route_config_open_api_properties_response.dart';

/// API route config of the Spring Cloud Gateway
class GatewayRouteConfigPropertiesResponse {
  /// The resource Id of the Azure Spring Apps app, required unless route defines `uri`.
  final String? appResourceId;
  /// To modify the request before sending it to the target endpoint, or the received response in app level.
  final List<String>? filters;
  /// OpenAPI properties of Spring Cloud Gateway route config.
  final GatewayRouteConfigOpenApiPropertiesResponse? openApi;
  /// A number of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final List<String>? predicates;
  /// Protocol of routed Azure Spring Apps applications.
  final String? protocol;
  /// State of the Spring Cloud Gateway route config.
  final String provisioningState;
  /// Array of API routes, each route contains properties such as `title`, `uri`, `ssoEnabled`, `predicates`, `filters`.
  final List<GatewayApiRouteResponse>? routes;
  /// Enable Single Sign-On in app level.
  final bool? ssoEnabled;

  /// Creates a new [GatewayRouteConfigPropertiesResponse].
  /// [appResourceId] The resource Id of the Azure Spring Apps app, required unless route defines `uri`.
  /// [filters] To modify the request before sending it to the target endpoint, or the received response in app level.
  /// [openApi] OpenAPI properties of Spring Cloud Gateway route config.
  /// [predicates] A number of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [protocol] Protocol of routed Azure Spring Apps applications.
  /// [provisioningState] State of the Spring Cloud Gateway route config.
  /// [routes] Array of API routes, each route contains properties such as `title`, `uri`, `ssoEnabled`, `predicates`, `filters`.
  /// [ssoEnabled] Enable Single Sign-On in app level.
  GatewayRouteConfigPropertiesResponse({
    this.appResourceId,
    this.filters,
    this.openApi,
    this.predicates,
    this.protocol,
    required this.provisioningState,
    this.routes,
    this.ssoEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appResourceId': ?appResourceId,
      'filters': ?filters,
      'openApi': ?openApi == null ? null : openApi!.toMap(),
      'predicates': ?predicates,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<GatewayApiRouteResponse, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'ssoEnabled': ?ssoEnabled,
    };
  }

  factory GatewayRouteConfigPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigPropertiesResponse(
      appResourceId: map['appResourceId'] == null ? null : map['appResourceId'] as String,
      filters: map['filters'] == null ? null : (map['filters'] as List).cast<String>(),
      openApi: map['openApi'] == null ? null : GatewayRouteConfigOpenApiPropertiesResponse.fromMap((map['openApi'] as Map).cast<String, dynamic>()),
      predicates: map['predicates'] == null ? null : (map['predicates'] as List).cast<String>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<GatewayApiRouteResponse>(map['routes'], (value) => GatewayApiRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      ssoEnabled: map['ssoEnabled'] == null ? null : map['ssoEnabled'] as bool,
    );
  }
}


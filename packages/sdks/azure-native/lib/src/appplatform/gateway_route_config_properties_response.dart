// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_api_route_response.dart';
import 'gateway_route_config_open_api_properties_response.dart';

/// API route config of the Spring Cloud Gateway
class GatewayRouteConfigPropertiesResponse {
  /// The resource Id of the Azure Spring Apps app, required unless route defines `uri`.
  final pulumi.Input<String>? appResourceId;
  /// To modify the request before sending it to the target endpoint, or the received response in app level.
  final pulumi.Input<List<String>>? filters;
  /// OpenAPI properties of Spring Cloud Gateway route config.
  final pulumi.Input<GatewayRouteConfigOpenApiPropertiesResponse>? openApi;
  /// A number of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>>? predicates;
  /// Protocol of routed Azure Spring Apps applications.
  final pulumi.Input<String>? protocol;
  /// State of the Spring Cloud Gateway route config.
  final pulumi.Input<String> provisioningState;
  /// Array of API routes, each route contains properties such as `title`, `uri`, `ssoEnabled`, `predicates`, `filters`.
  final pulumi.Input<List<GatewayApiRouteResponse>>? routes;
  /// Enable Single Sign-On in app level.
  final pulumi.Input<bool>? ssoEnabled;

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
      'openApi': ?pulumi.Input.mapOptionalInputValue<GatewayRouteConfigOpenApiPropertiesResponse, Map<String, dynamic>>(openApi, (value) => value.toMap()),
      'predicates': ?predicates,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<GatewayApiRouteResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<GatewayApiRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ssoEnabled': ?ssoEnabled,
    };
  }

  factory GatewayRouteConfigPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigPropertiesResponse(
      appResourceId: map['appResourceId'] == null ? null : (map['appResourceId']! as String).input(),
      filters: map['filters'] == null ? null : ((map['filters']! as List).cast<String>()).input(),
      openApi: map['openApi'] == null ? null : (GatewayRouteConfigOpenApiPropertiesResponse.fromMap((map['openApi']! as Map).cast<String, dynamic>())).input(),
      predicates: map['predicates'] == null ? null : ((map['predicates']! as List).cast<String>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<GatewayApiRouteResponse>(map['routes']!, (value) => GatewayApiRouteResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ssoEnabled: map['ssoEnabled'] == null ? null : (map['ssoEnabled']! as bool).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API route config of the Spring Cloud Gateway
class GatewayApiRouteResponse {
  /// A description, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String>? description;
  /// To modify the request before sending it to the target endpoint, or the received response.
  final pulumi.Input<List<String>>? filters;
  /// Route processing order.
  final pulumi.Input<int>? order;
  /// A number of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>>? predicates;
  /// Enable sso validation.
  final pulumi.Input<bool>? ssoEnabled;
  /// Classification tags, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<List<String>>? tags;
  /// A title, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String>? title;
  /// Pass currently-authenticated user's identity token to application service, default is 'false'
  final pulumi.Input<bool>? tokenRelay;
  /// Full uri, will override `appName`.
  final pulumi.Input<String>? uri;

  /// Creates a new [GatewayApiRouteResponse].
  /// [description] A description, will be applied to methods in the generated OpenAPI documentation.
  /// [filters] To modify the request before sending it to the target endpoint, or the received response.
  /// [order] Route processing order.
  /// [predicates] A number of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [ssoEnabled] Enable sso validation.
  /// [tags] Classification tags, will be applied to methods in the generated OpenAPI documentation.
  /// [title] A title, will be applied to methods in the generated OpenAPI documentation.
  /// [tokenRelay] Pass currently-authenticated user's identity token to application service, default is 'false'
  /// [uri] Full uri, will override `appName`.
  GatewayApiRouteResponse({
    this.description,
    this.filters,
    this.order,
    this.predicates,
    this.ssoEnabled,
    this.tags,
    this.title,
    this.tokenRelay,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filters': ?filters,
      'order': ?order,
      'predicates': ?predicates,
      'ssoEnabled': ?ssoEnabled,
      'tags': ?tags,
      'title': ?title,
      'tokenRelay': ?tokenRelay,
      'uri': ?uri,
    };
  }

  factory GatewayApiRouteResponse.fromMap(Map<String, dynamic> map) {
    return GatewayApiRouteResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      filters: map['filters'] == null ? null : ((map['filters'] as List).cast<String>()).input(),
      order: map['order'] == null ? null : (map['order'] as int).input(),
      predicates: map['predicates'] == null ? null : ((map['predicates'] as List).cast<String>()).input(),
      ssoEnabled: map['ssoEnabled'] == null ? null : (map['ssoEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      tokenRelay: map['tokenRelay'] == null ? null : (map['tokenRelay'] as bool).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// API route config of the Spring Cloud Gateway
class GatewayApiRouteResponse {
  /// A description, will be applied to methods in the generated OpenAPI documentation.
  final String? description;
  /// To modify the request before sending it to the target endpoint, or the received response.
  final List<String>? filters;
  /// Route processing order.
  final int? order;
  /// A number of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final List<String>? predicates;
  /// Enable sso validation.
  final bool? ssoEnabled;
  /// Classification tags, will be applied to methods in the generated OpenAPI documentation.
  final List<String>? tags;
  /// A title, will be applied to methods in the generated OpenAPI documentation.
  final String? title;
  /// Pass currently-authenticated user's identity token to application service, default is 'false'
  final bool? tokenRelay;
  /// Full uri, will override `appName`.
  final String? uri;

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
      description: map['description'] == null ? null : map['description'] as String,
      filters: map['filters'] == null ? null : (map['filters'] as List).cast<String>(),
      order: map['order'] == null ? null : map['order'] as int,
      predicates: map['predicates'] == null ? null : (map['predicates'] as List).cast<String>(),
      ssoEnabled: map['ssoEnabled'] == null ? null : map['ssoEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      title: map['title'] == null ? null : map['title'] as String,
      tokenRelay: map['tokenRelay'] == null ? null : map['tokenRelay'] as bool,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}


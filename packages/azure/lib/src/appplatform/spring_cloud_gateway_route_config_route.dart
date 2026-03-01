// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudGatewayRouteConfigRoute {
  /// Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation.
  final List<String>? classificationTags;
  /// Specifies the description which will be applied to methods in the generated OpenAPI documentation.
  final String? description;
  /// Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response.
  final List<String>? filters;
  /// Specifies the route processing order.
  final int order;
  /// Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final List<String>? predicates;
  /// Should the sso validation be enabled?
  final bool? ssoValidationEnabled;
  /// Specifies the title which will be applied to methods in the generated OpenAPI documentation.
  final String? title;
  /// Should pass currently-authenticated user's identity token to application service?
  final bool? tokenRelay;
  /// Specifies the full uri which will override `appName`.
  final String? uri;

  /// Creates a new [SpringCloudGatewayRouteConfigRoute].
  /// [classificationTags] Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation.
  /// [description] Specifies the description which will be applied to methods in the generated OpenAPI documentation.
  /// [filters] Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response.
  /// [order] Specifies the route processing order.
  /// [predicates] Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  /// [ssoValidationEnabled] Should the sso validation be enabled?
  /// [title] Specifies the title which will be applied to methods in the generated OpenAPI documentation.
  /// [tokenRelay] Should pass currently-authenticated user's identity token to application service?
  /// [uri] Specifies the full uri which will override `appName`.
  SpringCloudGatewayRouteConfigRoute({
    this.classificationTags,
    this.description,
    this.filters,
    required this.order,
    this.predicates,
    this.ssoValidationEnabled,
    this.title,
    this.tokenRelay,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationTags': ?classificationTags,
      'description': ?description,
      'filters': ?filters,
      'order': order,
      'predicates': ?predicates,
      'ssoValidationEnabled': ?ssoValidationEnabled,
      'title': ?title,
      'tokenRelay': ?tokenRelay,
      'uri': ?uri,
    };
  }

  factory SpringCloudGatewayRouteConfigRoute.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayRouteConfigRoute(
      classificationTags: map['classificationTags'] == null ? null : (map['classificationTags'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      filters: map['filters'] == null ? null : (map['filters'] as List).cast<String>(),
      order: map['order'] as int,
      predicates: map['predicates'] == null ? null : (map['predicates'] as List).cast<String>(),
      ssoValidationEnabled: map['ssoValidationEnabled'] == null ? null : map['ssoValidationEnabled'] as bool,
      title: map['title'] == null ? null : map['title'] as String,
      tokenRelay: map['tokenRelay'] == null ? null : map['tokenRelay'] as bool,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API route config of the Spring Cloud Gateway
class GatewayApiRouteResponse {
  /// A description, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String?>? description;
  /// To modify the request before sending it to the target endpoint, or the received response.
  final pulumi.Input<List<String>?>? filters;
  /// Route processing order.
  final pulumi.Input<int?>? order;
  /// A number of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
  final pulumi.Input<List<String>?>? predicates;
  /// Enable sso validation.
  final pulumi.Input<bool?>? ssoEnabled;
  /// Classification tags, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<List<String>?>? tags;
  /// A title, will be applied to methods in the generated OpenAPI documentation.
  final pulumi.Input<String?>? title;
  /// Pass currently-authenticated user's identity token to application service, default is 'false'
  final pulumi.Input<bool?>? tokenRelay;
  /// Full uri, will override `appName`.
  final pulumi.Input<String?>? uri;

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
  const GatewayApiRouteResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      predicates: (() { final guardedValue = map['predicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ssoEnabled: (() { final guardedValue = map['ssoEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenRelay: (() { final guardedValue = map['tokenRelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

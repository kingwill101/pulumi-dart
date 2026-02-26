// ignore_for_file: unused_element, unnecessary_cast

import 'http_redirect_action3.dart';
import 'http_route_action3.dart';

/// A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.
class PathRule3 {
  /// The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  final List<String>? paths;

  /// In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of routeAction or urlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  final HttpRouteAction3? routeAction;

  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final String? service;

  /// When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectAction3? urlRedirect;

  PathRule3({
    this.paths,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pathsValue;
    }
    final routeActionValue = routeAction;
    if (routeActionValue != null) {
      map['routeAction'] = routeActionValue.toMap();
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final urlRedirectValue = urlRedirect;
    if (urlRedirectValue != null) {
      map['urlRedirect'] = urlRedirectValue.toMap();
    }
    return map;
  }

  factory PathRule3.fromMap(Map<String, dynamic> map) {
    return PathRule3(
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      routeAction: map['routeAction'] == null
          ? null
          : HttpRouteAction3.fromMap(
              (map['routeAction'] as Map).cast<String, dynamic>()),
      service: map['service'] == null ? null : map['service'] as String,
      urlRedirect: map['urlRedirect'] == null
          ? null
          : HttpRedirectAction3.fromMap(
              (map['urlRedirect'] as Map).cast<String, dynamic>()),
    );
  }
}

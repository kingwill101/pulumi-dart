// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_header_action_response_compute_v1.dart';
import 'http_redirect_action_response_compute_v1.dart';
import 'http_route_action_response_compute_v1.dart';
import 'http_route_rule_response_compute_v1.dart';
import 'path_rule_response_compute_v1.dart';

/// A matcher for the path portion of the URL. The BackendService from the longest-matched rule will serve the URL. If no rule was matched, the default service is used.
class PathMatcherResponseComputeV1 {
  /// defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path matcher's defaultRouteAction.
  final HttpRouteActionResponseComputeV1 defaultRouteAction;

  /// The full or partial URL to the BackendService resource. This URL is used if none of the pathRules or routeRules defined by this PathMatcher are matched. For example, the following are all valid URLs to a BackendService resource: - https://www.googleapis.com/compute/v1/projects/project /global/backendServices/backendService - compute/v1/projects/project/global/backendServices/backendService - global/backendServices/backendService If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if defaultRouteAction specifies any weightedBackendServices, defaultService must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. Authorization requires one or more of the following Google IAM permissions on the specified resource default_service: - compute.backendBuckets.use - compute.backendServices.use
  final String defaultService;

  /// When none of the specified pathRules or routeRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectActionResponseComputeV1 defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Specifies changes to request and response headers that need to take effect for the selected backend service. HeaderAction specified here are applied after the matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionResponseComputeV1 headerAction;

  /// The name to which this PathMatcher is referred by the HostRule.
  final String name;

  /// The list of path rules. Use this list instead of routeRules when routing based on simple path matching is all that's required. The order by which path rules are specified does not matter. Matches are always done on the longest-path-first basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/* irrespective of the order in which those paths appear in this list. Within a given pathMatcher, only one of pathRules or routeRules must be set.
  final List<PathRuleResponseComputeV1> pathRules;

  /// The list of HTTP route rules. Use this list instead of pathRules when advanced route matching and routing actions are desired. routeRules are evaluated in order of priority, from the lowest to highest number. Within a given pathMatcher, you can set only one of pathRules or routeRules.
  final List<HttpRouteRuleResponseComputeV1> routeRules;

  PathMatcherResponseComputeV1({
    required this.defaultRouteAction,
    required this.defaultService,
    required this.defaultUrlRedirect,
    required this.description,
    required this.headerAction,
    required this.name,
    required this.pathRules,
    required this.routeRules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRouteAction'] = defaultRouteAction.toMap();
    map['defaultService'] = defaultService;
    map['defaultUrlRedirect'] = defaultUrlRedirect.toMap();
    map['description'] = description;
    map['headerAction'] = headerAction.toMap();
    map['name'] = name;
    map['pathRules'] = pulumi.Input.encodeList<PathRuleResponseComputeV1,
        Map<String, dynamic>>(pathRules, (value) => value.toMap());
    map['routeRules'] = pulumi.Input.encodeList<HttpRouteRuleResponseComputeV1,
        Map<String, dynamic>>(routeRules, (value) => value.toMap());
    return map;
  }

  factory PathMatcherResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return PathMatcherResponseComputeV1(
      defaultRouteAction: HttpRouteActionResponseComputeV1.fromMap(
          (map['defaultRouteAction'] as Map).cast<String, dynamic>()),
      defaultService: map['defaultService'] as String,
      defaultUrlRedirect: HttpRedirectActionResponseComputeV1.fromMap(
          (map['defaultUrlRedirect'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      headerAction: HttpHeaderActionResponseComputeV1.fromMap(
          (map['headerAction'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pathRules: pulumi.Input.decodeList<PathRuleResponseComputeV1>(
          map['pathRules'],
          (value) => PathRuleResponseComputeV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      routeRules: pulumi.Input.decodeList<HttpRouteRuleResponseComputeV1>(
          map['routeRules'],
          (value) => HttpRouteRuleResponseComputeV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

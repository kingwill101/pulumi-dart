// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy.dart';
import 'http_header_action.dart';
import 'http_redirect_action.dart';
import 'http_route_action.dart';
import 'http_route_rule.dart';
import 'path_rule.dart';

/// A matcher for the path portion of the URL. The BackendService from the longest-matched rule will serve the URL. If no rule was matched, the default service is used.
class PathMatcher {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  final CustomErrorResponsePolicy? defaultCustomErrorResponsePolicy;

  /// defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path matcher's defaultRouteAction.
  final HttpRouteAction? defaultRouteAction;

  /// The full or partial URL to the BackendService resource. This URL is used if none of the pathRules or routeRules defined by this PathMatcher are matched. For example, the following are all valid URLs to a BackendService resource: - https://www.googleapis.com/compute/v1/projects/project /global/backendServices/backendService - compute/v1/projects/project/global/backendServices/backendService - global/backendServices/backendService If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if defaultRouteAction specifies any weightedBackendServices, defaultService must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. Authorization requires one or more of the following Google IAM permissions on the specified resource default_service: - compute.backendBuckets.use - compute.backendServices.use
  final String? defaultService;

  /// When none of the specified pathRules or routeRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectAction? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backend service. HeaderAction specified here are applied after the matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderAction? headerAction;

  /// The name to which this PathMatcher is referred by the HostRule.
  final String? name;

  /// The list of path rules. Use this list instead of routeRules when routing based on simple path matching is all that's required. The order by which path rules are specified does not matter. Matches are always done on the longest-path-first basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/* irrespective of the order in which those paths appear in this list. Within a given pathMatcher, only one of pathRules or routeRules must be set.
  final List<PathRule>? pathRules;

  /// The list of HTTP route rules. Use this list instead of pathRules when advanced route matching and routing actions are desired. routeRules are evaluated in order of priority, from the lowest to highest number. Within a given pathMatcher, you can set only one of pathRules or routeRules.
  final List<HttpRouteRule>? routeRules;

  /// Creates a new [PathMatcher].
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path matcher's defaultRouteAction.
  /// [defaultService] The full or partial URL to the BackendService resource. This URL is used if none of the pathRules or routeRules defined by this PathMatcher are matched. For example, the following are all valid URLs to a BackendService resource: - https://www.googleapis.com/compute/v1/projects/project /global/backendServices/backendService - compute/v1/projects/project/global/backendServices/backendService - global/backendServices/backendService If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if defaultRouteAction specifies any weightedBackendServices, defaultService must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. Authorization requires one or more of the following Google IAM permissions on the specified resource default_service: - compute.backendBuckets.use - compute.backendServices.use
  /// [defaultUrlRedirect] When none of the specified pathRules or routeRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backend service. HeaderAction specified here are applied after the matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [name] The name to which this PathMatcher is referred by the HostRule.
  /// [pathRules] The list of path rules. Use this list instead of routeRules when routing based on simple path matching is all that's required. The order by which path rules are specified does not matter. Matches are always done on the longest-path-first basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/* irrespective of the order in which those paths appear in this list. Within a given pathMatcher, only one of pathRules or routeRules must be set.
  /// [routeRules] The list of HTTP route rules. Use this list instead of pathRules when advanced route matching and routing actions are desired. routeRules are evaluated in order of priority, from the lowest to highest number. Within a given pathMatcher, you can set only one of pathRules or routeRules.
  PathMatcher({
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.name,
    this.pathRules,
    this.routeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomErrorResponsePolicy':
          ?defaultCustomErrorResponsePolicy == null
          ? null
          : defaultCustomErrorResponsePolicy!.toMap(),
      'defaultRouteAction': ?defaultRouteAction == null
          ? null
          : defaultRouteAction!.toMap(),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?defaultUrlRedirect == null
          ? null
          : defaultUrlRedirect!.toMap(),
      'description': ?description,
      'headerAction': ?headerAction == null ? null : headerAction!.toMap(),
      'name': ?name,
      'pathRules': ?pathRules == null
          ? null
          : pulumi.Input.encodeList<PathRule, Map<String, dynamic>>(
              pathRules!,
              (value) => value.toMap(),
            ),
      'routeRules': ?routeRules == null
          ? null
          : pulumi.Input.encodeList<HttpRouteRule, Map<String, dynamic>>(
              routeRules!,
              (value) => value.toMap(),
            ),
    };
  }

  factory PathMatcher.fromMap(Map<String, dynamic> map) {
    return PathMatcher(
      defaultCustomErrorResponsePolicy:
          map['defaultCustomErrorResponsePolicy'] == null
          ? null
          : CustomErrorResponsePolicy.fromMap(
              (map['defaultCustomErrorResponsePolicy'] as Map)
                  .cast<String, dynamic>(),
            ),
      defaultRouteAction: map['defaultRouteAction'] == null
          ? null
          : HttpRouteAction.fromMap(
              (map['defaultRouteAction'] as Map).cast<String, dynamic>(),
            ),
      defaultService: map['defaultService'] == null
          ? null
          : map['defaultService'] as String,
      defaultUrlRedirect: map['defaultUrlRedirect'] == null
          ? null
          : HttpRedirectAction.fromMap(
              (map['defaultUrlRedirect'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : HttpHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      pathRules: map['pathRules'] == null
          ? null
          : pulumi.Input.decodeList<PathRule>(
              map['pathRules'],
              (value) =>
                  PathRule.fromMap((value as Map).cast<String, dynamic>()),
            ),
      routeRules: map['routeRules'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteRule>(
              map['routeRules'],
              (value) =>
                  HttpRouteRule.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}

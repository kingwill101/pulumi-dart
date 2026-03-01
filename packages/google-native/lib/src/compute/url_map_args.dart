// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy.dart';
import 'host_rule.dart';
import 'http_header_action.dart';
import 'http_redirect_action.dart';
import 'http_route_action.dart';
import 'path_matcher.dart';
import 'url_map_test.dart';

/// {@template pulumi_compute_alpha_url_map_args_doc}
/// The set of arguments for UrlMap.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_url_map_args_doc}
class UrlMapArgs {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  final pulumi.Input<CustomErrorResponsePolicy>?
  defaultCustomErrorResponsePolicy;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<HttpRouteAction>? defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final pulumi.Input<String>? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final pulumi.Input<HttpRedirectAction>? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<HttpHeaderAction>? headerAction;

  /// The list of host rules to use against the URL.
  final pulumi.Input<List<HostRule>>? hostRules;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The list of named PathMatchers to use against the URL.
  final pulumi.Input<List<PathMatcher>>? pathMatchers;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<List<UrlMapTest>>? tests;

  /// Creates a new [UrlMapArgs].
  /// [defaultCustomErrorResponsePolicy] defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultService] The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [hostRules] The list of host rules to use against the URL.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [pathMatchers] The list of named PathMatchers to use against the URL.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [tests] The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  UrlMapArgs({
    CustomErrorResponsePolicy? defaultCustomErrorResponsePolicy,
    HttpRouteAction? defaultRouteAction,
    String? defaultService,
    HttpRedirectAction? defaultUrlRedirect,
    String? description,
    HttpHeaderAction? headerAction,
    List<HostRule>? hostRules,
    String? name,
    List<PathMatcher>? pathMatchers,
    String? project,
    String? requestId,
    List<UrlMapTest>? tests,
  }) : defaultCustomErrorResponsePolicy =
           pulumi.Input.asOptionalInput<CustomErrorResponsePolicy>(
             defaultCustomErrorResponsePolicy,
           ),
       defaultRouteAction = pulumi.Input.asOptionalInput<HttpRouteAction>(
         defaultRouteAction,
       ),
       defaultService = pulumi.Input.asOptionalInput<String>(defaultService),
       defaultUrlRedirect = pulumi.Input.asOptionalInput<HttpRedirectAction>(
         defaultUrlRedirect,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       headerAction = pulumi.Input.asOptionalInput<HttpHeaderAction>(
         headerAction,
       ),
       hostRules = pulumi.Input.asOptionalInput<List<HostRule>>(hostRules),
       name = pulumi.Input.asOptionalInput<String>(name),
       pathMatchers = pulumi.Input.asOptionalInput<List<PathMatcher>>(
         pathMatchers,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       tests = pulumi.Input.asOptionalInput<List<UrlMapTest>>(tests);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultCustomErrorResponsePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            CustomErrorResponsePolicy,
            Map<String, dynamic>
          >(defaultCustomErrorResponsePolicy, (value) => value.toMap()),
      'defaultRouteAction':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRouteAction,
            Map<String, dynamic>
          >(defaultRouteAction, (value) => value.toMap()),
      'defaultService': ?defaultService,
      'defaultUrlRedirect':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRedirectAction,
            Map<String, dynamic>
          >(defaultUrlRedirect, (value) => value.toMap()),
      'description': ?description,
      'headerAction':
          ?pulumi.Input.mapOptionalInputValue<
            HttpHeaderAction,
            Map<String, dynamic>
          >(headerAction, (value) => value.toMap()),
      'hostRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<HostRule>,
            List<Map<String, dynamic>>
          >(
            hostRules,
            (value) => pulumi.Input.encodeList<HostRule, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'name': ?name,
      'pathMatchers':
          ?pulumi.Input.mapOptionalInputValue<
            List<PathMatcher>,
            List<Map<String, dynamic>>
          >(
            pathMatchers,
            (value) =>
                pulumi.Input.encodeList<PathMatcher, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'project': ?project,
      'requestId': ?requestId,
      'tests':
          ?pulumi.Input.mapOptionalInputValue<
            List<UrlMapTest>,
            List<Map<String, dynamic>>
          >(
            tests,
            (value) =>
                pulumi.Input.encodeList<UrlMapTest, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory UrlMapArgs.fromMap(Map<String, dynamic> map) {
    return UrlMapArgs(
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
      hostRules: map['hostRules'] == null
          ? null
          : pulumi.Input.decodeList<HostRule>(
              map['hostRules'],
              (value) =>
                  HostRule.fromMap((value as Map).cast<String, dynamic>()),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      pathMatchers: map['pathMatchers'] == null
          ? null
          : pulumi.Input.decodeList<PathMatcher>(
              map['pathMatchers'],
              (value) =>
                  PathMatcher.fromMap((value as Map).cast<String, dynamic>()),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      tests: map['tests'] == null
          ? null
          : pulumi.Input.decodeList<UrlMapTest>(
              map['tests'],
              (value) =>
                  UrlMapTest.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}

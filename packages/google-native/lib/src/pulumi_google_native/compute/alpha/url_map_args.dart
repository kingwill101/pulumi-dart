// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_error_response_policy.dart';
import 'host_rule.dart';
import 'http_header_action.dart';
import 'http_redirect_action.dart';
import 'http_route_action.dart';
import 'path_matcher.dart';
import 'url_map_test.dart';

/// The set of arguments for UrlMap.
class UrlMapArgs {
  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the load balancer level and applies only when no policy has been defined for the error code at lower levels like PathMatcher, RouteRule and PathRule within this UrlMap. For example, consider a UrlMap with the following configuration: - defaultCustomErrorResponsePolicy containing policies for responding to 5xx and 4xx errors - A PathMatcher configured for *.example.com has defaultCustomErrorResponsePolicy for 4xx. If a request for http://www.example.com/ encounters a 404, the policy in pathMatcher.defaultCustomErrorResponsePolicy will be enforced. When the request for http://www.example.com/ encounters a 502, the policy in UrlMap.defaultCustomErrorResponsePolicy will be enforced. When a request that does not match any host in *.example.com such as http://www.myotherexample.com/, encounters a 404, UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  final Input<CustomErrorResponsePolicy>? defaultCustomErrorResponsePolicy;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final Input<HttpRouteAction>? defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final Input<String>? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final Input<HttpRedirectAction>? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final Input<HttpHeaderAction>? headerAction;

  /// The list of host rules to use against the URL.
  final Input<List<HostRule>>? hostRules;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The list of named PathMatchers to use against the URL.
  final Input<List<PathMatcher>>? pathMatchers;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final Input<List<UrlMapTest>>? tests;

  UrlMapArgs({
    this.defaultCustomErrorResponsePolicy,
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.hostRules,
    this.name,
    this.pathMatchers,
    this.project,
    this.requestId,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultCustomErrorResponsePolicyValue =
        defaultCustomErrorResponsePolicy;
    if (defaultCustomErrorResponsePolicyValue != null) {
      map['defaultCustomErrorResponsePolicy'] = Input.mapOptionalInputValue<
              CustomErrorResponsePolicy, Map<String, dynamic>>(
          defaultCustomErrorResponsePolicyValue, (value) => value.toMap());
    }
    final defaultRouteActionValue = defaultRouteAction;
    if (defaultRouteActionValue != null) {
      map['defaultRouteAction'] =
          Input.mapOptionalInputValue<HttpRouteAction, Map<String, dynamic>>(
              defaultRouteActionValue, (value) => value.toMap());
    }
    final defaultServiceValue = defaultService;
    if (defaultServiceValue != null) {
      map['defaultService'] = defaultServiceValue;
    }
    final defaultUrlRedirectValue = defaultUrlRedirect;
    if (defaultUrlRedirectValue != null) {
      map['defaultUrlRedirect'] =
          Input.mapOptionalInputValue<HttpRedirectAction, Map<String, dynamic>>(
              defaultUrlRedirectValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] =
          Input.mapOptionalInputValue<HttpHeaderAction, Map<String, dynamic>>(
              headerActionValue, (value) => value.toMap());
    }
    final hostRulesValue = hostRules;
    if (hostRulesValue != null) {
      map['hostRules'] = Input.mapOptionalInputValue<List<HostRule>,
              List<Map<String, dynamic>>>(
          hostRulesValue,
          (value) => Input.encodeList<HostRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathMatchersValue = pathMatchers;
    if (pathMatchersValue != null) {
      map['pathMatchers'] = Input.mapOptionalInputValue<List<PathMatcher>,
              List<Map<String, dynamic>>>(
          pathMatchersValue,
          (value) => Input.encodeList<PathMatcher, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final testsValue = tests;
    if (testsValue != null) {
      map['tests'] = Input.mapOptionalInputValue<List<UrlMapTest>,
              List<Map<String, dynamic>>>(
          testsValue,
          (value) => Input.encodeList<UrlMapTest, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory UrlMapArgs.fromMap(Map<String, dynamic> map) {
    return UrlMapArgs(
      defaultCustomErrorResponsePolicy:
          Input.asOptionalInput<CustomErrorResponsePolicy>(
              map['defaultCustomErrorResponsePolicy']),
      defaultRouteAction:
          Input.asOptionalInput<HttpRouteAction>(map['defaultRouteAction']),
      defaultService: Input.asOptionalInput<String>(map['defaultService']),
      defaultUrlRedirect:
          Input.asOptionalInput<HttpRedirectAction>(map['defaultUrlRedirect']),
      description: Input.asOptionalInput<String>(map['description']),
      headerAction:
          Input.asOptionalInput<HttpHeaderAction>(map['headerAction']),
      hostRules: Input.asOptionalInput<List<HostRule>>(map['hostRules']),
      name: Input.asOptionalInput<String>(map['name']),
      pathMatchers:
          Input.asOptionalInput<List<PathMatcher>>(map['pathMatchers']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      tests: Input.asOptionalInput<List<UrlMapTest>>(map['tests']),
    );
  }
}

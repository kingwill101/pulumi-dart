// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'host_rule3.dart';
import 'http_header_action3.dart';
import 'http_redirect_action3.dart';
import 'http_route_action3.dart';
import 'path_matcher3.dart';
import 'url_map_test3.dart';

/// The set of arguments for UrlMap.
class UrlMapArgs3 {
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final Input<HttpRouteAction3>? defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final Input<String>? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final Input<HttpRedirectAction3>? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final Input<HttpHeaderAction3>? headerAction;

  /// The list of host rules to use against the URL.
  final Input<List<HostRule3>>? hostRules;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The list of named PathMatchers to use against the URL.
  final Input<List<PathMatcher3>>? pathMatchers;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final Input<List<UrlMapTest3>>? tests;

  UrlMapArgs3({
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
    final defaultRouteActionValue = defaultRouteAction;
    if (defaultRouteActionValue != null) {
      map['defaultRouteAction'] =
          Input.mapOptionalInputValue<HttpRouteAction3, Map<String, dynamic>>(
              defaultRouteActionValue, (value) => value.toMap());
    }
    final defaultServiceValue = defaultService;
    if (defaultServiceValue != null) {
      map['defaultService'] = defaultServiceValue;
    }
    final defaultUrlRedirectValue = defaultUrlRedirect;
    if (defaultUrlRedirectValue != null) {
      map['defaultUrlRedirect'] = Input.mapOptionalInputValue<
              HttpRedirectAction3, Map<String, dynamic>>(
          defaultUrlRedirectValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] =
          Input.mapOptionalInputValue<HttpHeaderAction3, Map<String, dynamic>>(
              headerActionValue, (value) => value.toMap());
    }
    final hostRulesValue = hostRules;
    if (hostRulesValue != null) {
      map['hostRules'] = Input.mapOptionalInputValue<List<HostRule3>,
              List<Map<String, dynamic>>>(
          hostRulesValue,
          (value) => Input.encodeList<HostRule3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathMatchersValue = pathMatchers;
    if (pathMatchersValue != null) {
      map['pathMatchers'] = Input.mapOptionalInputValue<List<PathMatcher3>,
              List<Map<String, dynamic>>>(
          pathMatchersValue,
          (value) => Input.encodeList<PathMatcher3, Map<String, dynamic>>(
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
      map['tests'] = Input.mapOptionalInputValue<List<UrlMapTest3>,
              List<Map<String, dynamic>>>(
          testsValue,
          (value) => Input.encodeList<UrlMapTest3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory UrlMapArgs3.fromMap(Map<String, dynamic> map) {
    return UrlMapArgs3(
      defaultRouteAction:
          Input.asOptionalInput<HttpRouteAction3>(map['defaultRouteAction']),
      defaultService: Input.asOptionalInput<String>(map['defaultService']),
      defaultUrlRedirect:
          Input.asOptionalInput<HttpRedirectAction3>(map['defaultUrlRedirect']),
      description: Input.asOptionalInput<String>(map['description']),
      headerAction:
          Input.asOptionalInput<HttpHeaderAction3>(map['headerAction']),
      hostRules: Input.asOptionalInput<List<HostRule3>>(map['hostRules']),
      name: Input.asOptionalInput<String>(map['name']),
      pathMatchers:
          Input.asOptionalInput<List<PathMatcher3>>(map['pathMatchers']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      tests: Input.asOptionalInput<List<UrlMapTest3>>(map['tests']),
    );
  }
}

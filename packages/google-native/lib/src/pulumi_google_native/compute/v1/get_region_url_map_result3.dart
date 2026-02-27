// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'host_rule_response3.dart';
import 'http_header_action_response3.dart';
import 'http_redirect_action_response3.dart';
import 'http_route_action_response3.dart';
import 'path_matcher_response3.dart';
import 'url_map_test_response3.dart';

/// Result data returned by getRegionUrlMap.
class GetRegionUrlMapResult3 {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices. Only one of defaultRouteAction or defaultUrlRedirect must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within defaultRouteAction. defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final HttpRouteActionResponse3 defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of defaultService, defaultUrlRedirect , or defaultRouteAction.weightedBackendService must be set. defaultService has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final String defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or defaultRouteAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectActionResponse3 defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field is ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  final String fingerprint;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction specified here take effect after headerAction specified under pathMatcher. headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionResponse3 headerAction;

  /// The list of host rules to use against the URL.
  final List<HostRuleResponse3> hostRules;

  /// Type of the resource. Always compute#urlMaps for url maps.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The list of named PathMatchers to use against the URL.
  final List<PathMatcherResponse3> pathMatchers;

  /// URL of the region where the regional URL map resides. This field is not applicable to global URL maps. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// The list of expected URL mapping tests. Request to update the UrlMap succeeds only if all test cases pass. You can specify a maximum of 100 tests per UrlMap. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<UrlMapTestResponse3> tests;

  GetRegionUrlMapResult3({
    required this.creationTimestamp,
    required this.defaultRouteAction,
    required this.defaultService,
    required this.defaultUrlRedirect,
    required this.description,
    required this.fingerprint,
    required this.headerAction,
    required this.hostRules,
    required this.kind,
    required this.name,
    required this.pathMatchers,
    required this.region,
    required this.selfLink,
    required this.tests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['defaultRouteAction'] = defaultRouteAction.toMap();
    map['defaultService'] = defaultService;
    map['defaultUrlRedirect'] = defaultUrlRedirect.toMap();
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['headerAction'] = headerAction.toMap();
    map['hostRules'] =
        Input.encodeList<HostRuleResponse3, Map<String, dynamic>>(
            hostRules, (value) => value.toMap());
    map['kind'] = kind;
    map['name'] = name;
    map['pathMatchers'] =
        Input.encodeList<PathMatcherResponse3, Map<String, dynamic>>(
            pathMatchers, (value) => value.toMap());
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['tests'] = Input.encodeList<UrlMapTestResponse3, Map<String, dynamic>>(
        tests, (value) => value.toMap());
    return map;
  }

  factory GetRegionUrlMapResult3.fromMap(Map<String, dynamic> map) {
    return GetRegionUrlMapResult3(
      creationTimestamp: map['creationTimestamp'] as String,
      defaultRouteAction: HttpRouteActionResponse3.fromMap(
          (map['defaultRouteAction'] as Map).cast<String, dynamic>()),
      defaultService: map['defaultService'] as String,
      defaultUrlRedirect: HttpRedirectActionResponse3.fromMap(
          (map['defaultUrlRedirect'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      headerAction: HttpHeaderActionResponse3.fromMap(
          (map['headerAction'] as Map).cast<String, dynamic>()),
      hostRules: Input.decodeList<HostRuleResponse3>(
          map['hostRules'],
          (value) => HostRuleResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
      pathMatchers: Input.decodeList<PathMatcherResponse3>(
          map['pathMatchers'],
          (value) => PathMatcherResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      tests: Input.decodeList<UrlMapTestResponse3>(
          map['tests'],
          (value) => UrlMapTestResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

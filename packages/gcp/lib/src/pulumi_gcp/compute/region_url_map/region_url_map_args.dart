// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_url_map_default_route_action/region_url_map_default_route_action.dart';
import '../region_url_map_default_url_redirect/region_url_map_default_url_redirect.dart';
import '../region_url_map_header_action/region_url_map_header_action.dart';
import '../region_url_map_host_rule/region_url_map_host_rule.dart';
import '../region_url_map_path_matcher/region_url_map_path_matcher.dart';
import '../region_url_map_test/region_url_map_test.dart';

/// The set of arguments for RegionUrlMap.
class RegionUrlMapArgs {
  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// URL maps for Classic external HTTP(S) load balancers only support the urlRewrite action within defaultRouteAction.
  /// defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapDefaultRouteAction>? defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if
  /// none of the hostRules match. If defaultRouteAction is additionally specified, advanced
  /// routing actions like URL Rewrites, etc. take effect prior to sending the request to the
  /// backend. However, if defaultService is specified, defaultRouteAction cannot contain any
  /// weightedBackendServices. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified.  Only one of defaultService,
  /// defaultUrlRedirect or defaultRouteAction.weightedBackendService must be set.
  final pulumi.Input<String>? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapDefaultUrlRedirect>? defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapHeaderAction>? headerAction;

  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapHostRule>>? hostRules;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcher>>? pathMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Region in which the url map should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// The list of expected URL mappings. Requests to update this UrlMap will
  /// succeed only if all of the test cases pass.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapTest>>? tests;

  RegionUrlMapArgs({
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    this.hostRules,
    this.name,
    this.pathMatchers,
    this.project,
    this.region,
    this.tests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultRouteActionValue = defaultRouteAction;
    if (defaultRouteActionValue != null) {
      map['defaultRouteAction'] = pulumi.Input.mapOptionalInputValue<
              RegionUrlMapDefaultRouteAction, Map<String, dynamic>>(
          defaultRouteActionValue, (value) => value.toMap());
    }
    final defaultServiceValue = defaultService;
    if (defaultServiceValue != null) {
      map['defaultService'] = defaultServiceValue;
    }
    final defaultUrlRedirectValue = defaultUrlRedirect;
    if (defaultUrlRedirectValue != null) {
      map['defaultUrlRedirect'] = pulumi.Input.mapOptionalInputValue<
              RegionUrlMapDefaultUrlRedirect, Map<String, dynamic>>(
          defaultUrlRedirectValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = pulumi.Input.mapOptionalInputValue<
          RegionUrlMapHeaderAction,
          Map<String, dynamic>>(headerActionValue, (value) => value.toMap());
    }
    final hostRulesValue = hostRules;
    if (hostRulesValue != null) {
      map['hostRules'] = pulumi.Input.mapOptionalInputValue<
              List<RegionUrlMapHostRule>, List<Map<String, dynamic>>>(
          hostRulesValue,
          (value) => pulumi.Input.encodeList<RegionUrlMapHostRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathMatchersValue = pathMatchers;
    if (pathMatchersValue != null) {
      map['pathMatchers'] = pulumi.Input.mapOptionalInputValue<
              List<RegionUrlMapPathMatcher>, List<Map<String, dynamic>>>(
          pathMatchersValue,
          (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcher,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final testsValue = tests;
    if (testsValue != null) {
      map['tests'] = pulumi.Input.mapOptionalInputValue<List<RegionUrlMapTest>,
              List<Map<String, dynamic>>>(
          testsValue,
          (value) =>
              pulumi.Input.encodeList<RegionUrlMapTest, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegionUrlMapArgs.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapArgs(
      defaultRouteAction:
          pulumi.Input.asOptionalInput<RegionUrlMapDefaultRouteAction>(
              map['defaultRouteAction']),
      defaultService:
          pulumi.Input.asOptionalInput<String>(map['defaultService']),
      defaultUrlRedirect:
          pulumi.Input.asOptionalInput<RegionUrlMapDefaultUrlRedirect>(
              map['defaultUrlRedirect']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      headerAction: pulumi.Input.asOptionalInput<RegionUrlMapHeaderAction>(
          map['headerAction']),
      hostRules: pulumi.Input.asOptionalInput<List<RegionUrlMapHostRule>>(
          map['hostRules']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      pathMatchers: pulumi.Input.asOptionalInput<List<RegionUrlMapPathMatcher>>(
          map['pathMatchers']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tests: pulumi.Input.asOptionalInput<List<RegionUrlMapTest>>(map['tests']),
    );
  }
}

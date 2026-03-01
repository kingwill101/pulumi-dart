// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_default_route_action.dart';
import 'region_url_map_path_matcher_default_url_redirect.dart';
import 'region_url_map_path_matcher_header_action.dart';
import 'region_url_map_path_matcher_path_rule.dart';
import 'region_url_map_path_matcher_route_rule.dart';

class RegionUrlMapPathMatcher {
  /// defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
  /// advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request
  /// to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set.
  /// Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultRouteAction? defaultRouteAction;

  /// A reference to a RegionBackendService resource. This will be used if
  /// none of the pathRules defined by this PathMatcher is matched by
  /// the URL's path portion.
  final String? defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultUrlRedirect? defaultUrlRedirect;

  /// An optional description of this resource.
  final String? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherHeaderAction? headerAction;

  /// The name to which this PathMatcher is referred by the HostRule.
  final String name;

  /// The list of path rules. Use this list instead of routeRules when routing based
  /// on simple path matching is all that's required. The order by which path rules
  /// are specified does not matter. Matches are always done on the longest-path-first
  /// basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/*
  /// irrespective of the order in which those paths appear in this list. Within a
  /// given pathMatcher, only one of pathRules or routeRules must be set.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherPathRule>? pathRules;

  /// The list of ordered HTTP route rules. Use this list instead of pathRules when
  /// advanced route matching and routing actions are desired. The order of specifying
  /// routeRules matters: the first rule that matches will cause its specified routing
  /// action to take effect. Within a given pathMatcher, only one of pathRules or
  /// routeRules must be set. routeRules are not supported in UrlMaps intended for
  /// External load balancers.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherRouteRule>? routeRules;

  /// Creates a new [RegionUrlMapPathMatcher].
  /// [defaultRouteAction] defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs
  /// [defaultService] A reference to a RegionBackendService resource. This will be used if
  /// [defaultUrlRedirect] When none of the specified hostRules match, the request is redirected to a URL specified
  /// [description] An optional description of this resource.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// [name] The name to which this PathMatcher is referred by the HostRule.
  /// [pathRules] The list of path rules. Use this list instead of routeRules when routing based
  /// [routeRules] The list of ordered HTTP route rules. Use this list instead of pathRules when
  RegionUrlMapPathMatcher({
    this.defaultRouteAction,
    this.defaultService,
    this.defaultUrlRedirect,
    this.description,
    this.headerAction,
    required this.name,
    this.pathRules,
    this.routeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRouteAction': ?defaultRouteAction == null
          ? null
          : defaultRouteAction!.toMap(),
      'defaultService': ?defaultService,
      'defaultUrlRedirect': ?defaultUrlRedirect == null
          ? null
          : defaultUrlRedirect!.toMap(),
      'description': ?description,
      'headerAction': ?headerAction == null ? null : headerAction!.toMap(),
      'name': name,
      'pathRules': ?pathRules == null
          ? null
          : pulumi.Input.encodeList<
              RegionUrlMapPathMatcherPathRule,
              Map<String, dynamic>
            >(pathRules!, (value) => value.toMap()),
      'routeRules': ?routeRules == null
          ? null
          : pulumi.Input.encodeList<
              RegionUrlMapPathMatcherRouteRule,
              Map<String, dynamic>
            >(routeRules!, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcher.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcher(
      defaultRouteAction: map['defaultRouteAction'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultRouteAction.fromMap(
              (map['defaultRouteAction'] as Map).cast<String, dynamic>(),
            ),
      defaultService: map['defaultService'] == null
          ? null
          : map['defaultService'] as String,
      defaultUrlRedirect: map['defaultUrlRedirect'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultUrlRedirect.fromMap(
              (map['defaultUrlRedirect'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : RegionUrlMapPathMatcherHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      pathRules: map['pathRules'] == null
          ? null
          : pulumi.Input.decodeList<RegionUrlMapPathMatcherPathRule>(
              map['pathRules'],
              (value) => RegionUrlMapPathMatcherPathRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      routeRules: map['routeRules'] == null
          ? null
          : pulumi.Input.decodeList<RegionUrlMapPathMatcherRouteRule>(
              map['routeRules'],
              (value) => RegionUrlMapPathMatcherRouteRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

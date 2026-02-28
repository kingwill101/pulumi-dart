// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_custom_error_response_policy.dart';
import 'urlmap_path_matcher_route_rule_header_action.dart';
import 'urlmap_path_matcher_route_rule_http_filter_config.dart';
import 'urlmap_path_matcher_route_rule_http_filter_metadata.dart';
import 'urlmap_path_matcher_route_rule_match_rule.dart';
import 'urlmap_path_matcher_route_rule_route_action.dart';
import 'urlmap_path_matcher_route_rule_url_redirect.dart';

class URLMapPathMatcherRouteRule {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleCustomErrorResponsePolicy?
      customErrorResponsePolicy;

  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here are applied before
  /// the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r
  /// outeAction.weightedBackendService.backendServiceWeightAction[].headerAction
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleHeaderAction? headerAction;

  /// Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director.
  /// httpFilterConfigs only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// See ForwardingRule for more details.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final List<URLMapPathMatcherRouteRuleHttpFilterConfig>? httpFilterConfigs;

  /// Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director.
  /// httpFilterMetadata only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// See ForwardingRule for more details.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final List<URLMapPathMatcherRouteRuleHttpFilterMetadata>? httpFilterMetadatas;

  /// The rules for determining a match.
  /// Structure is documented below.
  final List<URLMapPathMatcherRouteRuleMatchRule>? matchRules;

  /// For routeRules within a given pathMatcher, priority determines the order
  /// in which load balancer will interpret routeRules. RouteRules are evaluated
  /// in order of priority, from the lowest to highest number. The priority of
  /// a rule decreases as its number increases (1, 2, 3, N+1). The first rule
  /// that matches the request is applied.
  /// You cannot configure two or more routeRules with the same priority.
  /// Priority for each rule must be set to a number between 0 and
  /// 2147483647 inclusive.
  /// Priority numbers can have gaps, which enable you to add or remove rules
  /// in the future without affecting the rest of the rules. For example,
  /// 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which
  /// you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the
  /// future without any impact on existing rules.
  final int priority;

  /// In response to a matching matchRule, the load balancer performs advanced routing
  /// actions like URL rewrites, header transformations, etc. prior to forwarding the
  /// request to the selected backend. If  routeAction specifies any
  /// weightedBackendServices, service must not be set. Conversely if service is set,
  /// routeAction cannot contain any  weightedBackendServices. Only one of routeAction
  /// or urlRedirect must be set.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleRouteAction? routeAction;

  /// The backend service resource to which traffic is
  /// directed if this rule is matched. If routeAction is additionally specified,
  /// advanced routing actions like URL Rewrites, etc. take effect prior to sending
  /// the request to the backend. However, if service is specified, routeAction cannot
  /// contain any weightedBackendService s. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified. Only one of urlRedirect,
  /// service or routeAction.weightedBackendService must be set.
  final String? service;

  /// When this rule is matched, the request is redirected to a URL specified by
  /// urlRedirect. If urlRedirect is specified, service or routeAction must not be
  /// set.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleUrlRedirect? urlRedirect;

  /// Creates a new [URLMapPathMatcherRouteRule].
  /// [customErrorResponsePolicy] customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [httpFilterConfigs] Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director.
  /// [httpFilterMetadatas] Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director.
  /// [matchRules] The rules for determining a match.
  /// [priority] For routeRules within a given pathMatcher, priority determines the order
  /// [routeAction] In response to a matching matchRule, the load balancer performs advanced routing
  /// [service] The backend service resource to which traffic is
  /// [urlRedirect] When this rule is matched, the request is redirected to a URL specified by
  URLMapPathMatcherRouteRule({
    this.customErrorResponsePolicy,
    this.headerAction,
    this.httpFilterConfigs,
    this.httpFilterMetadatas,
    this.matchRules,
    required this.priority,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customErrorResponsePolicyValue = customErrorResponsePolicy;
    if (customErrorResponsePolicyValue != null) {
      map['customErrorResponsePolicy'] = customErrorResponsePolicyValue.toMap();
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    final httpFilterConfigsValue = httpFilterConfigs;
    if (httpFilterConfigsValue != null) {
      map['httpFilterConfigs'] = pulumi.Input.encodeList<
              URLMapPathMatcherRouteRuleHttpFilterConfig, Map<String, dynamic>>(
          httpFilterConfigsValue, (value) => value.toMap());
    }
    final httpFilterMetadatasValue = httpFilterMetadatas;
    if (httpFilterMetadatasValue != null) {
      map['httpFilterMetadatas'] = pulumi.Input.encodeList<
              URLMapPathMatcherRouteRuleHttpFilterMetadata,
              Map<String, dynamic>>(
          httpFilterMetadatasValue, (value) => value.toMap());
    }
    final matchRulesValue = matchRules;
    if (matchRulesValue != null) {
      map['matchRules'] = pulumi.Input.encodeList<
          URLMapPathMatcherRouteRuleMatchRule,
          Map<String, dynamic>>(matchRulesValue, (value) => value.toMap());
    }
    map['priority'] = priority;
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

  factory URLMapPathMatcherRouteRule.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRule(
      customErrorResponsePolicy: map['customErrorResponsePolicy'] == null
          ? null
          : URLMapPathMatcherRouteRuleCustomErrorResponsePolicy.fromMap(
              (map['customErrorResponsePolicy'] as Map)
                  .cast<String, dynamic>()),
      headerAction: map['headerAction'] == null
          ? null
          : URLMapPathMatcherRouteRuleHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>()),
      httpFilterConfigs: map['httpFilterConfigs'] == null
          ? null
          : pulumi.Input.decodeList<URLMapPathMatcherRouteRuleHttpFilterConfig>(
              map['httpFilterConfigs'],
              (value) => URLMapPathMatcherRouteRuleHttpFilterConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpFilterMetadatas: map['httpFilterMetadatas'] == null
          ? null
          : pulumi.Input.decodeList<
                  URLMapPathMatcherRouteRuleHttpFilterMetadata>(
              map['httpFilterMetadatas'],
              (value) => URLMapPathMatcherRouteRuleHttpFilterMetadata.fromMap(
                  (value as Map).cast<String, dynamic>())),
      matchRules: map['matchRules'] == null
          ? null
          : pulumi.Input.decodeList<URLMapPathMatcherRouteRuleMatchRule>(
              map['matchRules'],
              (value) => URLMapPathMatcherRouteRuleMatchRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      routeAction: map['routeAction'] == null
          ? null
          : URLMapPathMatcherRouteRuleRouteAction.fromMap(
              (map['routeAction'] as Map).cast<String, dynamic>()),
      service: map['service'] == null ? null : map['service'] as String,
      urlRedirect: map['urlRedirect'] == null
          ? null
          : URLMapPathMatcherRouteRuleUrlRedirect.fromMap(
              (map['urlRedirect'] as Map).cast<String, dynamic>()),
    );
  }
}

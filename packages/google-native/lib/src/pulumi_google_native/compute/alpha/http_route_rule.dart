// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_error_response_policy.dart';
import 'http_filter_config.dart';
import 'http_header_action.dart';
import 'http_redirect_action.dart';
import 'http_route_action.dart';
import 'http_route_rule_match.dart';

/// The HttpRouteRule setting specifies how to match an HTTP request and the corresponding routing action that load balancing proxies perform.
class HttpRouteRule {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the RouteRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with routeRules.routeAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the customErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the customErrorResponsePolicy is ignored and the response from the service is returned to the client. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  final CustomErrorResponsePolicy? customErrorResponsePolicy;

  /// The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  final String? description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderAction? headerAction;

  /// Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director. httpFilterConfigs only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<HttpFilterConfig>? httpFilterConfigs;

  /// Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director. httpFilterMetadata only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. The only configTypeUrl supported is type.googleapis.com/google.protobuf.Struct Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<HttpFilterConfig>? httpFilterMetadata;

  /// The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  final List<HttpRouteRuleMatch>? matchRules;

  /// For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  final int? priority;

  /// In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of urlRedirect, service or routeAction.weightedBackendService must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  final HttpRouteAction? routeAction;

  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final String? service;

  /// When this rule is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectAction? urlRedirect;

  HttpRouteRule({
    this.customErrorResponsePolicy,
    this.description,
    this.headerAction,
    this.httpFilterConfigs,
    this.httpFilterMetadata,
    this.matchRules,
    this.priority,
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
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    final httpFilterConfigsValue = httpFilterConfigs;
    if (httpFilterConfigsValue != null) {
      map['httpFilterConfigs'] =
          Input.encodeList<HttpFilterConfig, Map<String, dynamic>>(
              httpFilterConfigsValue, (value) => value.toMap());
    }
    final httpFilterMetadataValue = httpFilterMetadata;
    if (httpFilterMetadataValue != null) {
      map['httpFilterMetadata'] =
          Input.encodeList<HttpFilterConfig, Map<String, dynamic>>(
              httpFilterMetadataValue, (value) => value.toMap());
    }
    final matchRulesValue = matchRules;
    if (matchRulesValue != null) {
      map['matchRules'] =
          Input.encodeList<HttpRouteRuleMatch, Map<String, dynamic>>(
              matchRulesValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
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

  factory HttpRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRule(
      customErrorResponsePolicy: map['customErrorResponsePolicy'] == null
          ? null
          : CustomErrorResponsePolicy.fromMap(
              (map['customErrorResponsePolicy'] as Map)
                  .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : HttpHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>()),
      httpFilterConfigs: map['httpFilterConfigs'] == null
          ? null
          : Input.decodeList<HttpFilterConfig>(
              map['httpFilterConfigs'],
              (value) => HttpFilterConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      httpFilterMetadata: map['httpFilterMetadata'] == null
          ? null
          : Input.decodeList<HttpFilterConfig>(
              map['httpFilterMetadata'],
              (value) => HttpFilterConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      matchRules: map['matchRules'] == null
          ? null
          : Input.decodeList<HttpRouteRuleMatch>(
              map['matchRules'],
              (value) => HttpRouteRuleMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
      routeAction: map['routeAction'] == null
          ? null
          : HttpRouteAction.fromMap(
              (map['routeAction'] as Map).cast<String, dynamic>()),
      service: map['service'] == null ? null : map['service'] as String,
      urlRedirect: map['urlRedirect'] == null
          ? null
          : HttpRedirectAction.fromMap(
              (map['urlRedirect'] as Map).cast<String, dynamic>()),
    );
  }
}

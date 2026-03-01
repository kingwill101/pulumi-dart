// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_error_response_policy_response_compute_beta.dart';
import 'http_filter_config_response_compute_beta.dart';
import 'http_header_action_response_compute_beta.dart';
import 'http_redirect_action_response_compute_beta.dart';
import 'http_route_action_response_compute_beta.dart';
import 'http_route_rule_match_response_compute_beta.dart';

/// The HttpRouteRule setting specifies how to match an HTTP request and the corresponding routing action that load balancing proxies perform.
class HttpRouteRuleResponseComputeBeta {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the RouteRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with routeRules.routeAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the customErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the customErrorResponsePolicy is ignored and the response from the service is returned to the client. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  final CustomErrorResponsePolicyResponseComputeBeta customErrorResponsePolicy;

  /// The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  final String description;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final HttpHeaderActionResponseComputeBeta headerAction;

  /// Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director. httpFilterConfigs only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<HttpFilterConfigResponseComputeBeta> httpFilterConfigs;

  /// Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director. httpFilterMetadata only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. The only configTypeUrl supported is type.googleapis.com/google.protobuf.Struct Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  final List<HttpFilterConfigResponseComputeBeta> httpFilterMetadata;

  /// The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  final List<HttpRouteRuleMatchResponseComputeBeta> matchRules;

  /// For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  final int priority;

  /// In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of urlRedirect, service or routeAction.weightedBackendService must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  final HttpRouteActionResponseComputeBeta routeAction;

  /// The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  final String service;

  /// When this rule is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  final HttpRedirectActionResponseComputeBeta urlRedirect;

  /// Creates a new [HttpRouteRuleResponseComputeBeta].
  /// [customErrorResponsePolicy] customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the RouteRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with routeRules.routeAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the customErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the customErrorResponsePolicy is ignored and the response from the service is returned to the client. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// [description] The short description conveying the intent of this routeRule. The description can have a maximum length of 1024 characters.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for the selected backendService. The headerAction value specified here is applied before the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].routeAction.weightedBackendService.backendServiceWeightAction[].headerAction HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [httpFilterConfigs] Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director. httpFilterConfigs only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [httpFilterMetadata] Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director. httpFilterMetadata only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED. See ForwardingRule for more details. The only configTypeUrl supported is type.googleapis.com/google.protobuf.Struct Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// [matchRules] The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  /// [priority] For routeRules within a given pathMatcher, priority determines the order in which a load balancer interprets routeRules. RouteRules are evaluated in order of priority, from the lowest to highest number. The priority of a rule decreases as its number increases (1, 2, 3, N+1). The first rule that matches the request is applied. You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number from 0 to 2147483647 inclusive. Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  /// [routeAction] In response to a matching matchRule, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If routeAction specifies any weightedBackendServices, service must not be set. Conversely if service is set, routeAction cannot contain any weightedBackendServices. Only one of urlRedirect, service or routeAction.weightedBackendService must be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a route rule's routeAction.
  /// [service] The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. However, if service is specified, routeAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified. Only one of urlRedirect, service or routeAction.weightedBackendService must be set.
  /// [urlRedirect] When this rule is matched, the request is redirected to a URL specified by urlRedirect. If urlRedirect is specified, service or routeAction must not be set. Not supported when the URL map is bound to a target gRPC proxy.
  HttpRouteRuleResponseComputeBeta({
    required this.customErrorResponsePolicy,
    required this.description,
    required this.headerAction,
    required this.httpFilterConfigs,
    required this.httpFilterMetadata,
    required this.matchRules,
    required this.priority,
    required this.routeAction,
    required this.service,
    required this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorResponsePolicy': customErrorResponsePolicy.toMap(),
      'description': description,
      'headerAction': headerAction.toMap(),
      'httpFilterConfigs':
          pulumi.Input.encodeList<
            HttpFilterConfigResponseComputeBeta,
            Map<String, dynamic>
          >(httpFilterConfigs, (value) => value.toMap()),
      'httpFilterMetadata':
          pulumi.Input.encodeList<
            HttpFilterConfigResponseComputeBeta,
            Map<String, dynamic>
          >(httpFilterMetadata, (value) => value.toMap()),
      'matchRules':
          pulumi.Input.encodeList<
            HttpRouteRuleMatchResponseComputeBeta,
            Map<String, dynamic>
          >(matchRules, (value) => value.toMap()),
      'priority': priority,
      'routeAction': routeAction.toMap(),
      'service': service,
      'urlRedirect': urlRedirect.toMap(),
    };
  }

  factory HttpRouteRuleResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleResponseComputeBeta(
      customErrorResponsePolicy:
          CustomErrorResponsePolicyResponseComputeBeta.fromMap(
            (map['customErrorResponsePolicy'] as Map).cast<String, dynamic>(),
          ),
      description: map['description'] as String,
      headerAction: HttpHeaderActionResponseComputeBeta.fromMap(
        (map['headerAction'] as Map).cast<String, dynamic>(),
      ),
      httpFilterConfigs:
          pulumi.Input.decodeList<HttpFilterConfigResponseComputeBeta>(
            map['httpFilterConfigs'],
            (value) => HttpFilterConfigResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      httpFilterMetadata:
          pulumi.Input.decodeList<HttpFilterConfigResponseComputeBeta>(
            map['httpFilterMetadata'],
            (value) => HttpFilterConfigResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      matchRules:
          pulumi.Input.decodeList<HttpRouteRuleMatchResponseComputeBeta>(
            map['matchRules'],
            (value) => HttpRouteRuleMatchResponseComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      priority: map['priority'] as int,
      routeAction: HttpRouteActionResponseComputeBeta.fromMap(
        (map['routeAction'] as Map).cast<String, dynamic>(),
      ),
      service: map['service'] as String,
      urlRedirect: HttpRedirectActionResponseComputeBeta.fromMap(
        (map['urlRedirect'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}

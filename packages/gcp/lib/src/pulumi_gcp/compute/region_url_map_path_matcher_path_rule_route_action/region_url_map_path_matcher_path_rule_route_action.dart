// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_url_map_path_matcher_path_rule_route_action_cors_policy/region_url_map_path_matcher_path_rule_route_action_cors_policy.dart';
import '../region_url_map_path_matcher_path_rule_route_action_fault_injection_policy/region_url_map_path_matcher_path_rule_route_action_fault_injection_policy.dart';
import '../region_url_map_path_matcher_path_rule_route_action_request_mirror_policy/region_url_map_path_matcher_path_rule_route_action_request_mirror_policy.dart';
import '../region_url_map_path_matcher_path_rule_route_action_retry_policy/region_url_map_path_matcher_path_rule_route_action_retry_policy.dart';
import '../region_url_map_path_matcher_path_rule_route_action_timeout/region_url_map_path_matcher_path_rule_route_action_timeout.dart';
import '../region_url_map_path_matcher_path_rule_route_action_url_rewrite/region_url_map_path_matcher_path_rule_route_action_url_rewrite.dart';
import '../region_url_map_path_matcher_path_rule_route_action_weighted_backend_service/region_url_map_path_matcher_path_rule_route_action_weighted_backend_service.dart';

class RegionUrlMapPathMatcherPathRuleRouteAction {
  /// The specification for allowing client side cross-origin requests. Please see W3C
  /// Recommendation for Cross Origin Resource Sharing
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionCorsPolicy? corsPolicy;

  /// The specification for fault injection introduced into traffic to test the
  /// resiliency of clients to backend service failure. As part of fault injection,
  /// when clients send requests to a backend service, delays can be introduced by
  /// Loadbalancer on a percentage of requests before sending those request to the
  /// backend service. Similarly requests from clients can be aborted by the
  /// Loadbalancer for a percentage of requests. timeout and retry_policy will be
  /// ignored by clients that are configured with a fault_injection_policy.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy?
      faultInjectionPolicy;

  /// Specifies the policy on how requests intended for the route's backends are
  /// shadowed to a separate mirrored backend service. Loadbalancer does not wait for
  /// responses from the shadow service. Prior to sending traffic to the shadow
  /// service, the host / authority header is suffixed with -shadow.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy?
      requestMirrorPolicy;

  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicy? retryPolicy;

  /// Specifies the timeout for the selected route. Timeout is computed from the time
  /// the request is has been fully processed (i.e. end-of-stream) up until the
  /// response has been completely processed. Timeout includes all retries. If not
  /// specified, the default value is 15 seconds.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionTimeout? timeout;

  /// The spec to modify the URL of the request, prior to forwarding the request to
  /// the matched service
  /// Structure is documented below.
  final RegionUrlMapPathMatcherPathRuleRouteActionUrlRewrite? urlRewrite;

  /// A list of weighted backend services to send traffic to when a route match
  /// occurs. The weights determine the fraction of traffic that flows to their
  /// corresponding backend service. If all traffic needs to go to a single backend
  /// service, there must be one  weightedBackendService with weight set to a non 0
  /// number. Once a backendService is identified and before forwarding the request to
  /// the backend service, advanced routing actions like Url rewrites and header
  /// transformations are applied depending on additional settings specified in this
  /// HttpRouteAction.
  /// Structure is documented below.
  final List<RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendService>?
      weightedBackendServices;

  RegionUrlMapPathMatcherPathRuleRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final corsPolicyValue = corsPolicy;
    if (corsPolicyValue != null) {
      map['corsPolicy'] = corsPolicyValue.toMap();
    }
    final faultInjectionPolicyValue = faultInjectionPolicy;
    if (faultInjectionPolicyValue != null) {
      map['faultInjectionPolicy'] = faultInjectionPolicyValue.toMap();
    }
    final requestMirrorPolicyValue = requestMirrorPolicy;
    if (requestMirrorPolicyValue != null) {
      map['requestMirrorPolicy'] = requestMirrorPolicyValue.toMap();
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = retryPolicyValue.toMap();
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue.toMap();
    }
    final urlRewriteValue = urlRewrite;
    if (urlRewriteValue != null) {
      map['urlRewrite'] = urlRewriteValue.toMap();
    }
    final weightedBackendServicesValue = weightedBackendServices;
    if (weightedBackendServicesValue != null) {
      map['weightedBackendServices'] = Input.encodeList<
              RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendService,
              Map<String, dynamic>>(
          weightedBackendServicesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionUrlMapPathMatcherPathRuleRouteAction.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRuleRouteAction(
      corsPolicy: map['corsPolicy'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionCorsPolicy.fromMap(
              (map['corsPolicy'] as Map).cast<String, dynamic>()),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy
              .fromMap(
                  (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionRequestMirrorPolicy
              .fromMap(
                  (map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionRetryPolicy.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionTimeout.fromMap(
              (map['timeout'] as Map).cast<String, dynamic>()),
      urlRewrite: map['urlRewrite'] == null
          ? null
          : RegionUrlMapPathMatcherPathRuleRouteActionUrlRewrite.fromMap(
              (map['urlRewrite'] as Map).cast<String, dynamic>()),
      weightedBackendServices: map['weightedBackendServices'] == null
          ? null
          : Input.decodeList<
                  RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendService>(
              map['weightedBackendServices'],
              (value) =>
                  RegionUrlMapPathMatcherPathRuleRouteActionWeightedBackendService
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

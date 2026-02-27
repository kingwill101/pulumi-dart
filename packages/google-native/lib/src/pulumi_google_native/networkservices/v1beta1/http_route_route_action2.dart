// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_route_cors_policy2.dart';
import 'http_route_destination2.dart';
import 'http_route_fault_injection_policy2.dart';
import 'http_route_header_modifier2.dart';
import 'http_route_redirect2.dart';
import 'http_route_request_mirror_policy2.dart';
import 'http_route_retry_policy2.dart';
import 'http_route_stateful_session_affinity_policy2.dart';
import 'http_route_urlrewrite2.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteAction2 {
  /// The specification for allowing client side cross-origin requests.
  final HttpRouteCorsPolicy2? corsPolicy;

  /// The destination to which traffic should be forwarded.
  final List<HttpRouteDestination2>? destinations;

  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final HttpRouteFaultInjectionPolicy2? faultInjectionPolicy;

  /// If set, the request is directed as configured by this field.
  final HttpRouteRedirect2? redirect;

  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifier2? requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final HttpRouteRequestMirrorPolicy2? requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifier2? responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  final HttpRouteRetryPolicy2? retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final HttpRouteStatefulSessionAffinityPolicy2? statefulSessionAffinity;

  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String? timeout;

  /// The specification for rewrite URL before forwarding requests to the destination.
  final HttpRouteURLRewrite2? urlRewrite;

  HttpRouteRouteAction2({
    this.corsPolicy,
    this.destinations,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final corsPolicyValue = corsPolicy;
    if (corsPolicyValue != null) {
      map['corsPolicy'] = corsPolicyValue.toMap();
    }
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          Input.encodeList<HttpRouteDestination2, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final faultInjectionPolicyValue = faultInjectionPolicy;
    if (faultInjectionPolicyValue != null) {
      map['faultInjectionPolicy'] = faultInjectionPolicyValue.toMap();
    }
    final redirectValue = redirect;
    if (redirectValue != null) {
      map['redirect'] = redirectValue.toMap();
    }
    final requestHeaderModifierValue = requestHeaderModifier;
    if (requestHeaderModifierValue != null) {
      map['requestHeaderModifier'] = requestHeaderModifierValue.toMap();
    }
    final requestMirrorPolicyValue = requestMirrorPolicy;
    if (requestMirrorPolicyValue != null) {
      map['requestMirrorPolicy'] = requestMirrorPolicyValue.toMap();
    }
    final responseHeaderModifierValue = responseHeaderModifier;
    if (responseHeaderModifierValue != null) {
      map['responseHeaderModifier'] = responseHeaderModifierValue.toMap();
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = retryPolicyValue.toMap();
    }
    final statefulSessionAffinityValue = statefulSessionAffinity;
    if (statefulSessionAffinityValue != null) {
      map['statefulSessionAffinity'] = statefulSessionAffinityValue.toMap();
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final urlRewriteValue = urlRewrite;
    if (urlRewriteValue != null) {
      map['urlRewrite'] = urlRewriteValue.toMap();
    }
    return map;
  }

  factory HttpRouteRouteAction2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteAction2(
      corsPolicy: map['corsPolicy'] == null
          ? null
          : HttpRouteCorsPolicy2.fromMap(
              (map['corsPolicy'] as Map).cast<String, dynamic>()),
      destinations: map['destinations'] == null
          ? null
          : Input.decodeList<HttpRouteDestination2>(
              map['destinations'],
              (value) => HttpRouteDestination2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null
          ? null
          : HttpRouteFaultInjectionPolicy2.fromMap(
              (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      redirect: map['redirect'] == null
          ? null
          : HttpRouteRedirect2.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>()),
      requestHeaderModifier: map['requestHeaderModifier'] == null
          ? null
          : HttpRouteHeaderModifier2.fromMap(
              (map['requestHeaderModifier'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null
          ? null
          : HttpRouteRequestMirrorPolicy2.fromMap(
              (map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      responseHeaderModifier: map['responseHeaderModifier'] == null
          ? null
          : HttpRouteHeaderModifier2.fromMap(
              (map['responseHeaderModifier'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : HttpRouteRetryPolicy2.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity: map['statefulSessionAffinity'] == null
          ? null
          : HttpRouteStatefulSessionAffinityPolicy2.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      urlRewrite: map['urlRewrite'] == null
          ? null
          : HttpRouteURLRewrite2.fromMap(
              (map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}

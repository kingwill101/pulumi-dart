// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_route_cors_policy_response2.dart';
import 'http_route_destination_response2.dart';
import 'http_route_fault_injection_policy_response2.dart';
import 'http_route_header_modifier_response2.dart';
import 'http_route_redirect_response2.dart';
import 'http_route_request_mirror_policy_response2.dart';
import 'http_route_retry_policy_response2.dart';
import 'http_route_stateful_session_affinity_policy_response2.dart';
import 'http_route_urlrewrite_response2.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionResponse2 {
  /// The specification for allowing client side cross-origin requests.
  final HttpRouteCorsPolicyResponse2 corsPolicy;

  /// The destination to which traffic should be forwarded.
  final List<HttpRouteDestinationResponse2> destinations;

  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final HttpRouteFaultInjectionPolicyResponse2 faultInjectionPolicy;

  /// If set, the request is directed as configured by this field.
  final HttpRouteRedirectResponse2 redirect;

  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponse2 requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final HttpRouteRequestMirrorPolicyResponse2 requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponse2 responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  final HttpRouteRetryPolicyResponse2 retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final HttpRouteStatefulSessionAffinityPolicyResponse2 statefulSessionAffinity;

  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String timeout;

  /// The specification for rewrite URL before forwarding requests to the destination.
  final HttpRouteURLRewriteResponse2 urlRewrite;

  HttpRouteRouteActionResponse2({
    required this.corsPolicy,
    required this.destinations,
    required this.faultInjectionPolicy,
    required this.redirect,
    required this.requestHeaderModifier,
    required this.requestMirrorPolicy,
    required this.responseHeaderModifier,
    required this.retryPolicy,
    required this.statefulSessionAffinity,
    required this.timeout,
    required this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['corsPolicy'] = corsPolicy.toMap();
    map['destinations'] =
        Input.encodeList<HttpRouteDestinationResponse2, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    map['faultInjectionPolicy'] = faultInjectionPolicy.toMap();
    map['redirect'] = redirect.toMap();
    map['requestHeaderModifier'] = requestHeaderModifier.toMap();
    map['requestMirrorPolicy'] = requestMirrorPolicy.toMap();
    map['responseHeaderModifier'] = responseHeaderModifier.toMap();
    map['retryPolicy'] = retryPolicy.toMap();
    map['statefulSessionAffinity'] = statefulSessionAffinity.toMap();
    map['timeout'] = timeout;
    map['urlRewrite'] = urlRewrite.toMap();
    return map;
  }

  factory HttpRouteRouteActionResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteActionResponse2(
      corsPolicy: HttpRouteCorsPolicyResponse2.fromMap(
          (map['corsPolicy'] as Map).cast<String, dynamic>()),
      destinations: Input.decodeList<HttpRouteDestinationResponse2>(
          map['destinations'],
          (value) => HttpRouteDestinationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: HttpRouteFaultInjectionPolicyResponse2.fromMap(
          (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      redirect: HttpRouteRedirectResponse2.fromMap(
          (map['redirect'] as Map).cast<String, dynamic>()),
      requestHeaderModifier: HttpRouteHeaderModifierResponse2.fromMap(
          (map['requestHeaderModifier'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy: HttpRouteRequestMirrorPolicyResponse2.fromMap(
          (map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      responseHeaderModifier: HttpRouteHeaderModifierResponse2.fromMap(
          (map['responseHeaderModifier'] as Map).cast<String, dynamic>()),
      retryPolicy: HttpRouteRetryPolicyResponse2.fromMap(
          (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity:
          HttpRouteStatefulSessionAffinityPolicyResponse2.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
      urlRewrite: HttpRouteURLRewriteResponse2.fromMap(
          (map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}

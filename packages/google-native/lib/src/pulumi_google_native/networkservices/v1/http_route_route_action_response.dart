// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_route_cors_policy_response.dart';
import 'http_route_destination_response.dart';
import 'http_route_fault_injection_policy_response.dart';
import 'http_route_header_modifier_response.dart';
import 'http_route_redirect_response.dart';
import 'http_route_request_mirror_policy_response.dart';
import 'http_route_retry_policy_response.dart';
import 'http_route_stateful_session_affinity_policy_response.dart';
import 'http_route_urlrewrite_response.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionResponse {
  /// The specification for allowing client side cross-origin requests.
  final HttpRouteCorsPolicyResponse corsPolicy;

  /// The destination to which traffic should be forwarded.
  final List<HttpRouteDestinationResponse> destinations;

  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final HttpRouteFaultInjectionPolicyResponse faultInjectionPolicy;

  /// If set, the request is directed as configured by this field.
  final HttpRouteRedirectResponse redirect;

  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponse requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final HttpRouteRequestMirrorPolicyResponse requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponse responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  final HttpRouteRetryPolicyResponse retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final HttpRouteStatefulSessionAffinityPolicyResponse statefulSessionAffinity;

  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String timeout;

  /// The specification for rewrite URL before forwarding requests to the destination.
  final HttpRouteURLRewriteResponse urlRewrite;

  HttpRouteRouteActionResponse({
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
        Input.encodeList<HttpRouteDestinationResponse, Map<String, dynamic>>(
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

  factory HttpRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteActionResponse(
      corsPolicy: HttpRouteCorsPolicyResponse.fromMap(
          (map['corsPolicy'] as Map).cast<String, dynamic>()),
      destinations: Input.decodeList<HttpRouteDestinationResponse>(
          map['destinations'],
          (value) => HttpRouteDestinationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: HttpRouteFaultInjectionPolicyResponse.fromMap(
          (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      redirect: HttpRouteRedirectResponse.fromMap(
          (map['redirect'] as Map).cast<String, dynamic>()),
      requestHeaderModifier: HttpRouteHeaderModifierResponse.fromMap(
          (map['requestHeaderModifier'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy: HttpRouteRequestMirrorPolicyResponse.fromMap(
          (map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      responseHeaderModifier: HttpRouteHeaderModifierResponse.fromMap(
          (map['responseHeaderModifier'] as Map).cast<String, dynamic>()),
      retryPolicy: HttpRouteRetryPolicyResponse.fromMap(
          (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity:
          HttpRouteStatefulSessionAffinityPolicyResponse.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
      urlRewrite: HttpRouteURLRewriteResponse.fromMap(
          (map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}

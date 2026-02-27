// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_cors_policy_response_networkservices_v1beta1.dart';
import 'http_route_destination_response_networkservices_v1beta1.dart';
import 'http_route_fault_injection_policy_response_networkservices_v1beta1.dart';
import 'http_route_header_modifier_response_networkservices_v1beta1.dart';
import 'http_route_redirect_response_networkservices_v1beta1.dart';
import 'http_route_request_mirror_policy_response_networkservices_v1beta1.dart';
import 'http_route_retry_policy_response_networkservices_v1beta1.dart';
import 'http_route_stateful_session_affinity_policy_response_networkservices_v1beta1.dart';
import 'http_route_urlrewrite_response_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionResponseNetworkservicesV1beta1 {
  /// The specification for allowing client side cross-origin requests.
  final HttpRouteCorsPolicyResponseNetworkservicesV1beta1 corsPolicy;

  /// The destination to which traffic should be forwarded.
  final List<HttpRouteDestinationResponseNetworkservicesV1beta1> destinations;

  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1
      faultInjectionPolicy;

  /// If set, the request is directed as configured by this field.
  final HttpRouteRedirectResponseNetworkservicesV1beta1 redirect;

  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponseNetworkservicesV1beta1
      requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final HttpRouteRequestMirrorPolicyResponseNetworkservicesV1beta1
      requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierResponseNetworkservicesV1beta1
      responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  final HttpRouteRetryPolicyResponseNetworkservicesV1beta1 retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final HttpRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1
      statefulSessionAffinity;

  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String timeout;

  /// The specification for rewrite URL before forwarding requests to the destination.
  final HttpRouteURLRewriteResponseNetworkservicesV1beta1 urlRewrite;

  HttpRouteRouteActionResponseNetworkservicesV1beta1({
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
    map['destinations'] = pulumi.Input.encodeList<
        HttpRouteDestinationResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
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

  factory HttpRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRouteActionResponseNetworkservicesV1beta1(
      corsPolicy: HttpRouteCorsPolicyResponseNetworkservicesV1beta1.fromMap(
          (map['corsPolicy'] as Map).cast<String, dynamic>()),
      destinations: pulumi.Input.decodeList<
              HttpRouteDestinationResponseNetworkservicesV1beta1>(
          map['destinations'],
          (value) => HttpRouteDestinationResponseNetworkservicesV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy:
          HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1.fromMap(
              (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      redirect: HttpRouteRedirectResponseNetworkservicesV1beta1.fromMap(
          (map['redirect'] as Map).cast<String, dynamic>()),
      requestHeaderModifier:
          HttpRouteHeaderModifierResponseNetworkservicesV1beta1.fromMap(
              (map['requestHeaderModifier'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy:
          HttpRouteRequestMirrorPolicyResponseNetworkservicesV1beta1.fromMap(
              (map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      responseHeaderModifier:
          HttpRouteHeaderModifierResponseNetworkservicesV1beta1.fromMap(
              (map['responseHeaderModifier'] as Map).cast<String, dynamic>()),
      retryPolicy: HttpRouteRetryPolicyResponseNetworkservicesV1beta1.fromMap(
          (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity:
          HttpRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1
              .fromMap((map['statefulSessionAffinity'] as Map)
                  .cast<String, dynamic>()),
      timeout: map['timeout'] as String,
      urlRewrite: HttpRouteURLRewriteResponseNetworkservicesV1beta1.fromMap(
          (map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}

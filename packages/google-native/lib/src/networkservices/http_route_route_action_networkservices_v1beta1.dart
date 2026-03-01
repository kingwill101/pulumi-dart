// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_cors_policy_networkservices_v1beta1.dart';
import 'http_route_destination_networkservices_v1beta1.dart';
import 'http_route_fault_injection_policy_networkservices_v1beta1.dart';
import 'http_route_header_modifier_networkservices_v1beta1.dart';
import 'http_route_redirect_networkservices_v1beta1.dart';
import 'http_route_request_mirror_policy_networkservices_v1beta1.dart';
import 'http_route_retry_policy_networkservices_v1beta1.dart';
import 'http_route_stateful_session_affinity_policy_networkservices_v1beta1.dart';
import 'http_route_urlrewrite_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionNetworkservicesV1beta1 {
  /// The specification for allowing client side cross-origin requests.
  final HttpRouteCorsPolicyNetworkservicesV1beta1? corsPolicy;

  /// The destination to which traffic should be forwarded.
  final List<HttpRouteDestinationNetworkservicesV1beta1>? destinations;

  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final HttpRouteFaultInjectionPolicyNetworkservicesV1beta1?
  faultInjectionPolicy;

  /// If set, the request is directed as configured by this field.
  final HttpRouteRedirectNetworkservicesV1beta1? redirect;

  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierNetworkservicesV1beta1? requestHeaderModifier;

  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final HttpRouteRequestMirrorPolicyNetworkservicesV1beta1? requestMirrorPolicy;

  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final HttpRouteHeaderModifierNetworkservicesV1beta1? responseHeaderModifier;

  /// Specifies the retry policy associated with this route.
  final HttpRouteRetryPolicyNetworkservicesV1beta1? retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final HttpRouteStatefulSessionAffinityPolicyNetworkservicesV1beta1?
  statefulSessionAffinity;

  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String? timeout;

  /// The specification for rewrite URL before forwarding requests to the destination.
  final HttpRouteURLRewriteNetworkservicesV1beta1? urlRewrite;

  /// Creates a new [HttpRouteRouteActionNetworkservicesV1beta1].
  /// [corsPolicy] The specification for allowing client side cross-origin requests.
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [redirect] If set, the request is directed as configured by this field.
  /// [requestHeaderModifier] The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  /// [responseHeaderModifier] The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  /// [urlRewrite] The specification for rewrite URL before forwarding requests to the destination.
  HttpRouteRouteActionNetworkservicesV1beta1({
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
    return <String, dynamic>{
      'corsPolicy': ?corsPolicy == null ? null : corsPolicy!.toMap(),
      'destinations': ?destinations == null
          ? null
          : pulumi.Input.encodeList<
              HttpRouteDestinationNetworkservicesV1beta1,
              Map<String, dynamic>
            >(destinations!, (value) => value.toMap()),
      'faultInjectionPolicy': ?faultInjectionPolicy == null
          ? null
          : faultInjectionPolicy!.toMap(),
      'redirect': ?redirect == null ? null : redirect!.toMap(),
      'requestHeaderModifier': ?requestHeaderModifier == null
          ? null
          : requestHeaderModifier!.toMap(),
      'requestMirrorPolicy': ?requestMirrorPolicy == null
          ? null
          : requestMirrorPolicy!.toMap(),
      'responseHeaderModifier': ?responseHeaderModifier == null
          ? null
          : responseHeaderModifier!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'statefulSessionAffinity': ?statefulSessionAffinity == null
          ? null
          : statefulSessionAffinity!.toMap(),
      'timeout': ?timeout,
      'urlRewrite': ?urlRewrite == null ? null : urlRewrite!.toMap(),
    };
  }

  factory HttpRouteRouteActionNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteRouteActionNetworkservicesV1beta1(
      corsPolicy: map['corsPolicy'] == null
          ? null
          : HttpRouteCorsPolicyNetworkservicesV1beta1.fromMap(
              (map['corsPolicy'] as Map).cast<String, dynamic>(),
            ),
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteDestinationNetworkservicesV1beta1>(
              map['destinations'],
              (value) => HttpRouteDestinationNetworkservicesV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null
          ? null
          : HttpRouteFaultInjectionPolicyNetworkservicesV1beta1.fromMap(
              (map['faultInjectionPolicy'] as Map).cast<String, dynamic>(),
            ),
      redirect: map['redirect'] == null
          ? null
          : HttpRouteRedirectNetworkservicesV1beta1.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>(),
            ),
      requestHeaderModifier: map['requestHeaderModifier'] == null
          ? null
          : HttpRouteHeaderModifierNetworkservicesV1beta1.fromMap(
              (map['requestHeaderModifier'] as Map).cast<String, dynamic>(),
            ),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null
          ? null
          : HttpRouteRequestMirrorPolicyNetworkservicesV1beta1.fromMap(
              (map['requestMirrorPolicy'] as Map).cast<String, dynamic>(),
            ),
      responseHeaderModifier: map['responseHeaderModifier'] == null
          ? null
          : HttpRouteHeaderModifierNetworkservicesV1beta1.fromMap(
              (map['responseHeaderModifier'] as Map).cast<String, dynamic>(),
            ),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : HttpRouteRetryPolicyNetworkservicesV1beta1.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>(),
            ),
      statefulSessionAffinity: map['statefulSessionAffinity'] == null
          ? null
          : HttpRouteStatefulSessionAffinityPolicyNetworkservicesV1beta1.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>(),
            ),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      urlRewrite: map['urlRewrite'] == null
          ? null
          : HttpRouteURLRewriteNetworkservicesV1beta1.fromMap(
              (map['urlRewrite'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

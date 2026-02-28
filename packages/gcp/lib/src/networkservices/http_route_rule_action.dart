// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_action_cors_policy.dart';
import 'http_route_rule_action_destination.dart';
import 'http_route_rule_action_fault_injection_policy.dart';
import 'http_route_rule_action_redirect.dart';
import 'http_route_rule_action_request_header_modifier.dart';
import 'http_route_rule_action_request_mirror_policy.dart';
import 'http_route_rule_action_response_header_modifier.dart';
import 'http_route_rule_action_retry_policy.dart';
import 'http_route_rule_action_url_rewrite.dart';

class HttpRouteRuleAction {
  /// The specification for allowing client side cross-origin requests.
  /// Structure is documented below.
  final HttpRouteRuleActionCorsPolicy? corsPolicy;
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final List<HttpRouteRuleActionDestination>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// Structure is documented below.
  final HttpRouteRuleActionFaultInjectionPolicy? faultInjectionPolicy;
  /// If set, the request is directed as configured by this field.
  /// Structure is documented below.
  final HttpRouteRuleActionRedirect? redirect;
  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination.
  /// Structure is documented below.
  final HttpRouteRuleActionRequestHeaderModifier? requestHeaderModifier;
  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination.
  /// Structure is documented below.
  final HttpRouteRuleActionRequestMirrorPolicy? requestMirrorPolicy;
  /// The specification for modifying the headers of a response prior to sending the response back to the client.
  /// Structure is documented below.
  final HttpRouteRuleActionResponseHeaderModifier? responseHeaderModifier;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final HttpRouteRuleActionRetryPolicy? retryPolicy;
  /// Specifies the timeout for selected route.
  final String? timeout;
  /// The specification for rewrite URL before forwarding requests to the destination.
  /// Structure is documented below.
  final HttpRouteRuleActionUrlRewrite? urlRewrite;

  /// Creates a new [HttpRouteRuleAction].
  /// [corsPolicy] The specification for allowing client side cross-origin requests.
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// [redirect] If set, the request is directed as configured by this field.
  /// [requestHeaderModifier] The specification for modifying the headers of a matching request prior to delivery of the request to the destination.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination.
  /// [responseHeaderModifier] The specification for modifying the headers of a response prior to sending the response back to the client.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for selected route.
  /// [urlRewrite] The specification for rewrite URL before forwarding requests to the destination.
  HttpRouteRuleAction({
    this.corsPolicy,
    this.destinations,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsPolicy': ?corsPolicy == null ? null : corsPolicy!.toMap(),
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<HttpRouteRuleActionDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'faultInjectionPolicy': ?faultInjectionPolicy == null ? null : faultInjectionPolicy!.toMap(),
      'redirect': ?redirect == null ? null : redirect!.toMap(),
      'requestHeaderModifier': ?requestHeaderModifier == null ? null : requestHeaderModifier!.toMap(),
      'requestMirrorPolicy': ?requestMirrorPolicy == null ? null : requestMirrorPolicy!.toMap(),
      'responseHeaderModifier': ?responseHeaderModifier == null ? null : responseHeaderModifier!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'timeout': ?timeout,
      'urlRewrite': ?urlRewrite == null ? null : urlRewrite!.toMap(),
    };
  }

  factory HttpRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleAction(
      corsPolicy: map['corsPolicy'] == null ? null : HttpRouteRuleActionCorsPolicy.fromMap((map['corsPolicy'] as Map).cast<String, dynamic>()),
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<HttpRouteRuleActionDestination>(map['destinations'], (value) => HttpRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : HttpRouteRuleActionFaultInjectionPolicy.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      redirect: map['redirect'] == null ? null : HttpRouteRuleActionRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>()),
      requestHeaderModifier: map['requestHeaderModifier'] == null ? null : HttpRouteRuleActionRequestHeaderModifier.fromMap((map['requestHeaderModifier'] as Map).cast<String, dynamic>()),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null ? null : HttpRouteRuleActionRequestMirrorPolicy.fromMap((map['requestMirrorPolicy'] as Map).cast<String, dynamic>()),
      responseHeaderModifier: map['responseHeaderModifier'] == null ? null : HttpRouteRuleActionResponseHeaderModifier.fromMap((map['responseHeaderModifier'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : HttpRouteRuleActionRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      urlRewrite: map['urlRewrite'] == null ? null : HttpRouteRuleActionUrlRewrite.fromMap((map['urlRewrite'] as Map).cast<String, dynamic>()),
    );
  }
}


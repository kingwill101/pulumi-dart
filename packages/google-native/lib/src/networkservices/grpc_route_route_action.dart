// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_destination.dart';
import 'grpc_route_fault_injection_policy.dart';
import 'grpc_route_retry_policy.dart';
import 'grpc_route_stateful_session_affinity_policy.dart';

/// Specifies how to route matched traffic.
class GrpcRouteRouteAction {
  /// Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  final List<GrpcRouteDestination>? destinations;

  /// Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final GrpcRouteFaultInjectionPolicy? faultInjectionPolicy;

  /// Optional. Specifies the retry policy associated with this route.
  final GrpcRouteRetryPolicy? retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final GrpcRouteStatefulSessionAffinityPolicy? statefulSessionAffinity;

  /// Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String? timeout;

  /// Creates a new [GrpcRouteRouteAction].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  /// [faultInjectionPolicy] Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [retryPolicy] Optional. Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  GrpcRouteRouteAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          pulumi.Input.encodeList<GrpcRouteDestination, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final faultInjectionPolicyValue = faultInjectionPolicy;
    if (faultInjectionPolicyValue != null) {
      map['faultInjectionPolicy'] = faultInjectionPolicyValue.toMap();
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
    return map;
  }

  factory GrpcRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteAction(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<GrpcRouteDestination>(
              map['destinations'],
              (value) => GrpcRouteDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null
          ? null
          : GrpcRouteFaultInjectionPolicy.fromMap(
              (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null
          ? null
          : GrpcRouteRetryPolicy.fromMap(
              (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity: map['statefulSessionAffinity'] == null
          ? null
          : GrpcRouteStatefulSessionAffinityPolicy.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'grpc_route_destination_response.dart';
import 'grpc_route_fault_injection_policy_response.dart';
import 'grpc_route_retry_policy_response.dart';
import 'grpc_route_stateful_session_affinity_policy_response.dart';

/// Specifies how to route matched traffic.
class GrpcRouteRouteActionResponse {
  /// Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  final List<GrpcRouteDestinationResponse> destinations;

  /// Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final GrpcRouteFaultInjectionPolicyResponse faultInjectionPolicy;

  /// Optional. Specifies the retry policy associated with this route.
  final GrpcRouteRetryPolicyResponse retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final GrpcRouteStatefulSessionAffinityPolicyResponse statefulSessionAffinity;

  /// Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String timeout;

  GrpcRouteRouteActionResponse({
    required this.destinations,
    required this.faultInjectionPolicy,
    required this.retryPolicy,
    required this.statefulSessionAffinity,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        Input.encodeList<GrpcRouteDestinationResponse, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    map['faultInjectionPolicy'] = faultInjectionPolicy.toMap();
    map['retryPolicy'] = retryPolicy.toMap();
    map['statefulSessionAffinity'] = statefulSessionAffinity.toMap();
    map['timeout'] = timeout;
    return map;
  }

  factory GrpcRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteActionResponse(
      destinations: Input.decodeList<GrpcRouteDestinationResponse>(
          map['destinations'],
          (value) => GrpcRouteDestinationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: GrpcRouteFaultInjectionPolicyResponse.fromMap(
          (map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      retryPolicy: GrpcRouteRetryPolicyResponse.fromMap(
          (map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity:
          GrpcRouteStatefulSessionAffinityPolicyResponse.fromMap(
              (map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
    );
  }
}

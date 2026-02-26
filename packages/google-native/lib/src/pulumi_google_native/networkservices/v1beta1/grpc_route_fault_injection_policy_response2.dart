// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_fault_injection_policy_abort_response2.dart';
import 'grpc_route_fault_injection_policy_delay_response2.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicyResponse2 {
  /// The specification for aborting to client requests.
  final GrpcRouteFaultInjectionPolicyAbortResponse2 abort;

  /// The specification for injecting delay to client requests.
  final GrpcRouteFaultInjectionPolicyDelayResponse2 delay;

  GrpcRouteFaultInjectionPolicyResponse2({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abort'] = abort.toMap();
    map['delay'] = delay.toMap();
    return map;
  }

  factory GrpcRouteFaultInjectionPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyResponse2(
      abort: GrpcRouteFaultInjectionPolicyAbortResponse2.fromMap(
          (map['abort'] as Map).cast<String, dynamic>()),
      delay: GrpcRouteFaultInjectionPolicyDelayResponse2.fromMap(
          (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

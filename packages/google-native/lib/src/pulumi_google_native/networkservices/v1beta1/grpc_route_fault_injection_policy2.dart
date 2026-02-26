// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_fault_injection_policy_abort2.dart';
import 'grpc_route_fault_injection_policy_delay2.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicy2 {
  /// The specification for aborting to client requests.
  final GrpcRouteFaultInjectionPolicyAbort2? abort;

  /// The specification for injecting delay to client requests.
  final GrpcRouteFaultInjectionPolicyDelay2? delay;

  GrpcRouteFaultInjectionPolicy2({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortValue = abort;
    if (abortValue != null) {
      map['abort'] = abortValue.toMap();
    }
    final delayValue = delay;
    if (delayValue != null) {
      map['delay'] = delayValue.toMap();
    }
    return map;
  }

  factory GrpcRouteFaultInjectionPolicy2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicy2(
      abort: map['abort'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyAbort2.fromMap(
              (map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyDelay2.fromMap(
              (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

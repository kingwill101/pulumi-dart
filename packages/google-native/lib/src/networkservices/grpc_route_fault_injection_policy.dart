// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_fault_injection_policy_abort.dart';
import 'grpc_route_fault_injection_policy_delay.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicy {
  /// The specification for aborting to client requests.
  final GrpcRouteFaultInjectionPolicyAbort? abort;

  /// The specification for injecting delay to client requests.
  final GrpcRouteFaultInjectionPolicyDelay? delay;

  /// Creates a new [GrpcRouteFaultInjectionPolicy].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  GrpcRouteFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory GrpcRouteFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>(),
            ),
      delay: map['delay'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

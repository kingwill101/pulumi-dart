// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_fault_injection_policy_abort.dart';
import 'http_route_fault_injection_policy_delay.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicy {
  /// The specification for aborting to client requests.
  final HttpRouteFaultInjectionPolicyAbort? abort;

  /// The specification for injecting delay to client requests.
  final HttpRouteFaultInjectionPolicyDelay? delay;

  /// Creates a new [HttpRouteFaultInjectionPolicy].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  HttpRouteFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory HttpRouteFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : HttpRouteFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>(),
            ),
      delay: map['delay'] == null
          ? null
          : HttpRouteFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

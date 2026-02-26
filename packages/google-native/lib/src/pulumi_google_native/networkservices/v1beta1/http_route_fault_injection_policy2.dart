// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_fault_injection_policy_abort2.dart';
import 'http_route_fault_injection_policy_delay2.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicy2 {
  /// The specification for aborting to client requests.
  final HttpRouteFaultInjectionPolicyAbort2? abort;

  /// The specification for injecting delay to client requests.
  final HttpRouteFaultInjectionPolicyDelay2? delay;

  HttpRouteFaultInjectionPolicy2({
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

  factory HttpRouteFaultInjectionPolicy2.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicy2(
      abort: map['abort'] == null
          ? null
          : HttpRouteFaultInjectionPolicyAbort2.fromMap(
              (map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : HttpRouteFaultInjectionPolicyDelay2.fromMap(
              (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

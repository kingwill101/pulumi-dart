// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_default_route_action_fault_injection_policy_abort.dart';
import 'urlmap_default_route_action_fault_injection_policy_delay.dart';

class URLMapDefaultRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final URLMapDefaultRouteActionFaultInjectionPolicyAbort? abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final URLMapDefaultRouteActionFaultInjectionPolicyDelay? delay;

  /// Creates a new [URLMapDefaultRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  URLMapDefaultRouteActionFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory URLMapDefaultRouteActionFaultInjectionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapDefaultRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : URLMapDefaultRouteActionFaultInjectionPolicyAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>(),
            ),
      delay: map['delay'] == null
          ? null
          : URLMapDefaultRouteActionFaultInjectionPolicyDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

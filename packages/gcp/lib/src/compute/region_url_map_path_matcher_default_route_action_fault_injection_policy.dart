// ignore_for_file: unused_element, unnecessary_cast

import 'region_url_map_path_matcher_default_route_action_fault_injection_policy_abort.dart';
import 'region_url_map_path_matcher_default_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort?
      abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay?
      delay;

  /// Creates a new [RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy({
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

  factory RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort
              .fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay
              .fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

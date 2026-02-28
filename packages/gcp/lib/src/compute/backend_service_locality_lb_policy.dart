// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_lb_policy_custom_policy.dart';
import 'backend_service_locality_lb_policy_policy.dart';

class BackendServiceLocalityLbPolicy {
  /// The configuration for a custom policy implemented by the user and
  /// deployed with the client.
  /// Structure is documented below.
  final BackendServiceLocalityLbPolicyCustomPolicy? customPolicy;

  /// The configuration for a built-in load balancing policy.
  /// Structure is documented below.
  final BackendServiceLocalityLbPolicyPolicy? policy;

  /// Creates a new [BackendServiceLocalityLbPolicy].
  /// [customPolicy] The configuration for a custom policy implemented by the user and
  /// [policy] The configuration for a built-in load balancing policy.
  BackendServiceLocalityLbPolicy({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPolicyValue = customPolicy;
    if (customPolicyValue != null) {
      map['customPolicy'] = customPolicyValue.toMap();
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue.toMap();
    }
    return map;
  }

  factory BackendServiceLocalityLbPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLbPolicy(
      customPolicy: map['customPolicy'] == null
          ? null
          : BackendServiceLocalityLbPolicyCustomPolicy.fromMap(
              (map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null
          ? null
          : BackendServiceLocalityLbPolicyPolicy.fromMap(
              (map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

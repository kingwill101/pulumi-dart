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
  BackendServiceLocalityLbPolicy({this.customPolicy, this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?customPolicy == null ? null : customPolicy!.toMap(),
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory BackendServiceLocalityLbPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLbPolicy(
      customPolicy: map['customPolicy'] == null
          ? null
          : BackendServiceLocalityLbPolicyCustomPolicy.fromMap(
              (map['customPolicy'] as Map).cast<String, dynamic>(),
            ),
      policy: map['policy'] == null
          ? null
          : BackendServiceLocalityLbPolicyPolicy.fromMap(
              (map['policy'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

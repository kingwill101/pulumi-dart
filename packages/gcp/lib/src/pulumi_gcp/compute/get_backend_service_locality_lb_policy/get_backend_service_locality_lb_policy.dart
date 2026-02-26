// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backend_service_locality_lb_policy_custom_policy/get_backend_service_locality_lb_policy_custom_policy.dart';
import '../get_backend_service_locality_lb_policy_policy/get_backend_service_locality_lb_policy_policy.dart';

class GetBackendServiceLocalityLbPolicy {
  /// The configuration for a custom policy implemented by the user and
  /// deployed with the client.
  final List<GetBackendServiceLocalityLbPolicyCustomPolicy> customPolicies;

  /// The configuration for a built-in load balancing policy.
  final List<GetBackendServiceLocalityLbPolicyPolicy> policies;

  GetBackendServiceLocalityLbPolicy({
    required this.customPolicies,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicies'] = Input.encodeList<
        GetBackendServiceLocalityLbPolicyCustomPolicy,
        Map<String, dynamic>>(customPolicies, (value) => value.toMap());
    map['policies'] = Input.encodeList<GetBackendServiceLocalityLbPolicyPolicy,
        Map<String, dynamic>>(policies, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceLocalityLbPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLocalityLbPolicy(
      customPolicies:
          Input.decodeList<GetBackendServiceLocalityLbPolicyCustomPolicy>(
              map['customPolicies'],
              (value) => GetBackendServiceLocalityLbPolicyCustomPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      policies: Input.decodeList<GetBackendServiceLocalityLbPolicyPolicy>(
          map['policies'],
          (value) => GetBackendServiceLocalityLbPolicyPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

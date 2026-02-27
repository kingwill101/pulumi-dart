// ignore_for_file: unused_element, unnecessary_cast

import 'subsetting_policy_compute_v1.dart';

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingComputeV1 {
  final SubsettingPolicyComputeV1? policy;

  SubsettingComputeV1({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue.value;
    }
    return map;
  }

  factory SubsettingComputeV1.fromMap(Map<String, dynamic> map) {
    return SubsettingComputeV1(
      policy: map['policy'] == null
          ? null
          : SubsettingPolicyComputeV1.fromValue(map['policy'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'subsetting_policy3.dart';

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class Subsetting3 {
  final SubsettingPolicy3? policy;

  Subsetting3({
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

  factory Subsetting3.fromMap(Map<String, dynamic> map) {
    return Subsetting3(
      policy: map['policy'] == null
          ? null
          : SubsettingPolicy3.fromValue(map['policy'] as String),
    );
  }
}

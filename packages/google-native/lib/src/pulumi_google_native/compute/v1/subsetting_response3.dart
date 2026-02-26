// ignore_for_file: unused_element, unnecessary_cast

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingResponse3 {
  final String policy;

  SubsettingResponse3({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    return map;
  }

  factory SubsettingResponse3.fromMap(Map<String, dynamic> map) {
    return SubsettingResponse3(
      policy: map['policy'] as String,
    );
  }
}

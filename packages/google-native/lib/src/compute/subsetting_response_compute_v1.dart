// ignore_for_file: unused_element, unnecessary_cast

/// Subsetting configuration for this BackendService. Currently this is applicable only for Internal TCP/UDP load balancing, Internal HTTP(S) load balancing and Traffic Director.
class SubsettingResponseComputeV1 {
  final String policy;

  /// Creates a new [SubsettingResponseComputeV1].
  /// [policy] Required.
  SubsettingResponseComputeV1({
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    return map;
  }

  factory SubsettingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SubsettingResponseComputeV1(
      policy: map['policy'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class GetRegionBackendServiceSubsetting {
  /// The algorithm used for subsetting. Possible values: ["CONSISTENT_HASH_SUBSETTING"]
  final String policy;
  /// The number of backends per backend group assigned to each proxy instance or each service mesh client.
  /// An input parameter to the CONSISTENT_HASH_SUBSETTING algorithm. Can only be set if policy is set to
  /// CONSISTENT_HASH_SUBSETTING. Can only be set if load balancing scheme is INTERNAL_MANAGED or INTERNAL_SELF_MANAGED.
  /// subsetSize is optional for Internal HTTP(S) load balancing and required for Traffic Director.
  /// If you do not provide this value, Cloud Load Balancing will calculate it dynamically to optimize the number
  /// of proxies/clients visible to each backend and vice versa.
  /// Must be greater than 0. If subsetSize is larger than the number of backends/endpoints, then subsetting is disabled.
  final int subsetSize;

  /// Creates a new [GetRegionBackendServiceSubsetting].
  /// [policy] The algorithm used for subsetting. Possible values: ["CONSISTENT_HASH_SUBSETTING"]
  /// [subsetSize] The number of backends per backend group assigned to each proxy instance or each service mesh client.
  GetRegionBackendServiceSubsetting({
    required this.policy,
    required this.subsetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'subsetSize': subsetSize,
    };
  }

  factory GetRegionBackendServiceSubsetting.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceSubsetting(
      policy: map['policy'] as String,
      subsetSize: map['subsetSize'] as int,
    );
  }
}


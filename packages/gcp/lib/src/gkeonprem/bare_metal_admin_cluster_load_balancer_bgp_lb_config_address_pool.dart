// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool {
  /// The addresses that are part of this pool.
  final List<String>? addresses;

  /// This avoids buggy consumer devices mistakenly
  /// dropping IPv4 traffic for those special IP addresses.
  final bool? avoidBuggyIps;

  /// If true, prevent IP addresses from being automatically assigned.
  final bool? manualAssign;

  /// (Optional)
  final String? pool;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool].
  /// [addresses] The addresses that are part of this pool.
  /// [avoidBuggyIps] This avoids buggy consumer devices mistakenly
  /// [manualAssign] If true, prevent IP addresses from being automatically assigned.
  /// [pool] (Optional)
  BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'avoidBuggyIps': ?avoidBuggyIps,
      'manualAssign': ?manualAssign,
      'pool': ?pool,
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      avoidBuggyIps: map['avoidBuggyIps'] == null
          ? null
          : map['avoidBuggyIps'] as bool,
      manualAssign: map['manualAssign'] == null
          ? null
          : map['manualAssign'] as bool,
      pool: map['pool'] == null ? null : map['pool'] as String,
    );
  }
}

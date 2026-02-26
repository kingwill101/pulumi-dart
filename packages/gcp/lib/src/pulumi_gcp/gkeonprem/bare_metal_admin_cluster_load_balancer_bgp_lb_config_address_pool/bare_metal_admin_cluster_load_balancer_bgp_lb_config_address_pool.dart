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

  BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool({
    this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    final avoidBuggyIpsValue = avoidBuggyIps;
    if (avoidBuggyIpsValue != null) {
      map['avoidBuggyIps'] = avoidBuggyIpsValue;
    }
    final manualAssignValue = manualAssign;
    if (manualAssignValue != null) {
      map['manualAssign'] = manualAssignValue;
    }
    final poolValue = pool;
    if (poolValue != null) {
      map['pool'] = poolValue;
    }
    return map;
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      avoidBuggyIps:
          map['avoidBuggyIps'] == null ? null : map['avoidBuggyIps'] as bool,
      manualAssign:
          map['manualAssign'] == null ? null : map['manualAssign'] as bool,
      pool: map['pool'] == null ? null : map['pool'] as String,
    );
  }
}

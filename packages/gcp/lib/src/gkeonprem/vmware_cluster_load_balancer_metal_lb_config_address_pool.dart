// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterLoadBalancerMetalLbConfigAddressPool {
  /// The addresses that are part of this pool. Each address
  /// must be either in the CIDR form (1.2.3.0/24) or range
  /// form (1.2.3.1-1.2.3.5).
  final List<String> addresses;

  /// If true, avoid using IPs ending in .0 or .255.
  /// This avoids buggy consumer devices mistakenly dropping IPv4 traffic for
  /// those special IP addresses.
  final bool? avoidBuggyIps;

  /// If true, prevent IP addresses from being automatically assigned.
  ///
  /// <a name="nested_dataplane_v2"></a>The `dataplane_v2` block supports:
  final bool? manualAssign;

  /// The name of the address pool.
  final String pool;

  /// Creates a new [VMwareClusterLoadBalancerMetalLbConfigAddressPool].
  /// [addresses] The addresses that are part of this pool. Each address
  /// [avoidBuggyIps] If true, avoid using IPs ending in .0 or .255.
  /// [manualAssign] If true, prevent IP addresses from being automatically assigned.
  /// [pool] The name of the address pool.
  VMwareClusterLoadBalancerMetalLbConfigAddressPool({
    required this.addresses,
    this.avoidBuggyIps,
    this.manualAssign,
    required this.pool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addresses'] = addresses;
    final avoidBuggyIpsValue = avoidBuggyIps;
    if (avoidBuggyIpsValue != null) {
      map['avoidBuggyIps'] = avoidBuggyIpsValue;
    }
    final manualAssignValue = manualAssign;
    if (manualAssignValue != null) {
      map['manualAssign'] = manualAssignValue;
    }
    map['pool'] = pool;
    return map;
  }

  factory VMwareClusterLoadBalancerMetalLbConfigAddressPool.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerMetalLbConfigAddressPool(
      addresses: (map['addresses'] as List).cast<String>(),
      avoidBuggyIps:
          map['avoidBuggyIps'] == null ? null : map['avoidBuggyIps'] as bool,
      manualAssign:
          map['manualAssign'] == null ? null : map['manualAssign'] as bool,
      pool: map['pool'] as String,
    );
  }
}

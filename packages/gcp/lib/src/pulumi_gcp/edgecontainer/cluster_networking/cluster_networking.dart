// ignore_for_file: unused_element, unnecessary_cast

class ClusterNetworking {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these
  /// blocks. Only a single block is supported. This field cannot be changed
  /// after creation.
  final List<String> clusterIpv4CidrBlocks;

  /// If specified, dual stack mode is enabled and all pods in the cluster are
  /// assigned an IPv6 address from these blocks alongside from an IPv4
  /// address. Only a single block is supported. This field cannot be changed
  /// after creation.
  final List<String>? clusterIpv6CidrBlocks;

  /// (Output)
  /// IP addressing type of this cluster i.e. SINGLESTACK_V4 vs DUALSTACK_V4_V6.
  final String? networkType;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from these
  /// blocks. Only a single block is supported. This field cannot be changed
  /// after creation.
  final List<String> servicesIpv4CidrBlocks;

  /// If specified, dual stack mode is enabled and all services in the cluster are
  /// assigned an IPv6 address from these blocks alongside from an IPv4
  /// address. Only a single block is supported. This field cannot be changed
  /// after creation.
  final List<String>? servicesIpv6CidrBlocks;

  ClusterNetworking({
    required this.clusterIpv4CidrBlocks,
    this.clusterIpv6CidrBlocks,
    this.networkType,
    required this.servicesIpv4CidrBlocks,
    this.servicesIpv6CidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterIpv4CidrBlocks'] = clusterIpv4CidrBlocks;
    final clusterIpv6CidrBlocksValue = clusterIpv6CidrBlocks;
    if (clusterIpv6CidrBlocksValue != null) {
      map['clusterIpv6CidrBlocks'] = clusterIpv6CidrBlocksValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    map['servicesIpv4CidrBlocks'] = servicesIpv4CidrBlocks;
    final servicesIpv6CidrBlocksValue = servicesIpv6CidrBlocks;
    if (servicesIpv6CidrBlocksValue != null) {
      map['servicesIpv6CidrBlocks'] = servicesIpv6CidrBlocksValue;
    }
    return map;
  }

  factory ClusterNetworking.fromMap(Map<String, dynamic> map) {
    return ClusterNetworking(
      clusterIpv4CidrBlocks:
          (map['clusterIpv4CidrBlocks'] as List).cast<String>(),
      clusterIpv6CidrBlocks: map['clusterIpv6CidrBlocks'] == null
          ? null
          : (map['clusterIpv6CidrBlocks'] as List).cast<String>(),
      networkType:
          map['networkType'] == null ? null : map['networkType'] as String,
      servicesIpv4CidrBlocks:
          (map['servicesIpv4CidrBlocks'] as List).cast<String>(),
      servicesIpv6CidrBlocks: map['servicesIpv6CidrBlocks'] == null
          ? null
          : (map['servicesIpv6CidrBlocks'] as List).cast<String>(),
    );
  }
}

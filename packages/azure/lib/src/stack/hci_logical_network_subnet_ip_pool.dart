// ignore_for_file: unused_element, unnecessary_cast


class HciLogicalNetworkSubnetIpPool {
  /// The IPv4 address of the end of the IP address pool. Changing this forces a new resource to be created.
  final String end;
  /// The IPv4 address of the start of the IP address pool. Changing this forces a new resource to be created.
  final String start;

  /// Creates a new [HciLogicalNetworkSubnetIpPool].
  /// [end] The IPv4 address of the end of the IP address pool. Changing this forces a new resource to be created.
  /// [start] The IPv4 address of the start of the IP address pool. Changing this forces a new resource to be created.
  HciLogicalNetworkSubnetIpPool({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory HciLogicalNetworkSubnetIpPool.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnetIpPool(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}


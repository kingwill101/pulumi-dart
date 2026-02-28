// ignore_for_file: unused_element, unnecessary_cast

class GetCustomRoutingAcceleratorIpSet {
  final List<String> ipAddresses;
  final String ipFamily;

  /// Creates a new [GetCustomRoutingAcceleratorIpSet].
  /// [ipAddresses] Required.
  /// [ipFamily] Required.
  GetCustomRoutingAcceleratorIpSet({
    required this.ipAddresses,
    required this.ipFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddresses'] = ipAddresses;
    map['ipFamily'] = ipFamily;
    return map;
  }

  factory GetCustomRoutingAcceleratorIpSet.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorIpSet(
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      ipFamily: map['ipFamily'] as String,
    );
  }
}

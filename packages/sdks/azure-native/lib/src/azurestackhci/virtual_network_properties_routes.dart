// ignore_for_file: unused_element, unnecessary_cast


/// Route is associated with a subnet.
class VirtualNetworkPropertiesRoutes {
  /// AddressPrefix - The destination CIDR to which the route applies.
  final String? addressPrefix;
  /// Name - name of the subnet
  final String? name;
  /// NextHopIPAddress - The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final String? nextHopIpAddress;

  /// Creates a new [VirtualNetworkPropertiesRoutes].
  /// [addressPrefix] AddressPrefix - The destination CIDR to which the route applies.
  /// [name] Name - name of the subnet
  /// [nextHopIpAddress] NextHopIPAddress - The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  VirtualNetworkPropertiesRoutes({
    this.addressPrefix,
    this.name,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory VirtualNetworkPropertiesRoutes.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesRoutes(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : map['nextHopIpAddress'] as String,
    );
  }
}


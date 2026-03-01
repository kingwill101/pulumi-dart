// ignore_for_file: unused_element, unnecessary_cast


class SubnetIpAddressPool {
  /// The list of IP address prefixes allocated to the subnet.
  final List<String>? allocatedIpAddressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool.
  final String id;
  /// The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  ///
  /// > **Note:** `number_of_ip_addresses` cannot be decreased.
  final String numberOfIpAddresses;

  /// Creates a new [SubnetIpAddressPool].
  /// [allocatedIpAddressPrefixes] The list of IP address prefixes allocated to the subnet.
  /// [id] The ID of the Network Manager IP Address Management (IPAM) Pool.
  /// [numberOfIpAddresses] The number of IP addresses to allocated to the subnet. The value must be a string that represents a positive number, e.g., `"100"`.
  SubnetIpAddressPool({
    this.allocatedIpAddressPrefixes,
    required this.id,
    required this.numberOfIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpAddressPrefixes': ?allocatedIpAddressPrefixes,
      'id': id,
      'numberOfIpAddresses': numberOfIpAddresses,
    };
  }

  factory SubnetIpAddressPool.fromMap(Map<String, dynamic> map) {
    return SubnetIpAddressPool(
      allocatedIpAddressPrefixes: map['allocatedIpAddressPrefixes'] == null ? null : (map['allocatedIpAddressPrefixes'] as List).cast<String>(),
      id: map['id'] as String,
      numberOfIpAddresses: map['numberOfIpAddresses'] as String,
    );
  }
}


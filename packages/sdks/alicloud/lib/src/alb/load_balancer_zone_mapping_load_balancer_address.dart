// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerZoneMappingLoadBalancerAddress {
  /// An IP address of the IPv4 type.
  final String? address;
  /// The elastic IP identifier.
  final String? allocationId;
  /// The type of the public EIP. Value:
  final String? eipType;
  /// IPv4 private network address.
  final String? intranetAddress;
  /// The private network IPv4 address detection status of the application-oriented load balancing instance.
  final String? intranetAddressHcStatus;
  /// IPv4 Local address list. The list of addresses used by ALB to interact with the backend service.
  final List<String>? ipv4LocalAddresses;
  /// An IP address of the IPv6 type.
  final String? ipv6Address;
  /// The IPv6 address detection status of the application-based load balancing instance.
  final String? ipv6AddressHcStatus;
  /// IPv6 Local address list. The list of addresses used by ALB to interact with the backend service.
  final List<String>? ipv6LocalAddresses;

  /// Creates a new [LoadBalancerZoneMappingLoadBalancerAddress].
  /// [address] An IP address of the IPv4 type.
  /// [allocationId] The elastic IP identifier.
  /// [eipType] The type of the public EIP. Value:
  /// [intranetAddress] IPv4 private network address.
  /// [intranetAddressHcStatus] The private network IPv4 address detection status of the application-oriented load balancing instance.
  /// [ipv4LocalAddresses] IPv4 Local address list. The list of addresses used by ALB to interact with the backend service.
  /// [ipv6Address] An IP address of the IPv6 type.
  /// [ipv6AddressHcStatus] The IPv6 address detection status of the application-based load balancing instance.
  /// [ipv6LocalAddresses] IPv6 Local address list. The list of addresses used by ALB to interact with the backend service.
  LoadBalancerZoneMappingLoadBalancerAddress({
    this.address,
    this.allocationId,
    this.eipType,
    this.intranetAddress,
    this.intranetAddressHcStatus,
    this.ipv4LocalAddresses,
    this.ipv6Address,
    this.ipv6AddressHcStatus,
    this.ipv6LocalAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allocationId': ?allocationId,
      'eipType': ?eipType,
      'intranetAddress': ?intranetAddress,
      'intranetAddressHcStatus': ?intranetAddressHcStatus,
      'ipv4LocalAddresses': ?ipv4LocalAddresses,
      'ipv6Address': ?ipv6Address,
      'ipv6AddressHcStatus': ?ipv6AddressHcStatus,
      'ipv6LocalAddresses': ?ipv6LocalAddresses,
    };
  }

  factory LoadBalancerZoneMappingLoadBalancerAddress.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneMappingLoadBalancerAddress(
      address: map['address'] == null ? null : map['address'] as String,
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      eipType: map['eipType'] == null ? null : map['eipType'] as String,
      intranetAddress: map['intranetAddress'] == null ? null : map['intranetAddress'] as String,
      intranetAddressHcStatus: map['intranetAddressHcStatus'] == null ? null : map['intranetAddressHcStatus'] as String,
      ipv4LocalAddresses: map['ipv4LocalAddresses'] == null ? null : (map['ipv4LocalAddresses'] as List).cast<String>(),
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      ipv6AddressHcStatus: map['ipv6AddressHcStatus'] == null ? null : map['ipv6AddressHcStatus'] as String,
      ipv6LocalAddresses: map['ipv6LocalAddresses'] == null ? null : (map['ipv6LocalAddresses'] as List).cast<String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerZoneMappingLoadBalancerAddress {
  /// IPv4 address.
  final pulumi.Input<String> address;
  /// The elastic IP address (EIP).
  final pulumi.Input<String> allocationId;
  /// The type of EIP.
  final pulumi.Input<String> eipType;
  /// The private IPv4 address.
  final pulumi.Input<String> intranetAddress;
  /// The health status of the private IPv4 address of the ALB instance.
  final pulumi.Input<String> intranetAddressHcStatus;
  /// The IPv4 link-local addresses.
  final pulumi.Input<List<String>> ipv4LocalAddresses;
  /// IPv6 address.
  final pulumi.Input<String> ipv6Address;
  /// The health status of the private IPv6 address of the ALB instance.
  final pulumi.Input<String> ipv6AddressHcStatus;
  /// The IPv6 link-local addresses.
  final pulumi.Input<List<String>> ipv6LocalAddresses;

  /// Creates a new [GetLoadBalancersBalancerZoneMappingLoadBalancerAddress].
  /// [address] IPv4 address.
  /// [allocationId] The elastic IP address (EIP).
  /// [eipType] The type of EIP.
  /// [intranetAddress] The private IPv4 address.
  /// [intranetAddressHcStatus] The health status of the private IPv4 address of the ALB instance.
  /// [ipv4LocalAddresses] The IPv4 link-local addresses.
  /// [ipv6Address] IPv6 address.
  /// [ipv6AddressHcStatus] The health status of the private IPv6 address of the ALB instance.
  /// [ipv6LocalAddresses] The IPv6 link-local addresses.
  GetLoadBalancersBalancerZoneMappingLoadBalancerAddress({
    required this.address,
    required this.allocationId,
    required this.eipType,
    required this.intranetAddress,
    required this.intranetAddressHcStatus,
    required this.ipv4LocalAddresses,
    required this.ipv6Address,
    required this.ipv6AddressHcStatus,
    required this.ipv6LocalAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'allocationId': allocationId,
      'eipType': eipType,
      'intranetAddress': intranetAddress,
      'intranetAddressHcStatus': intranetAddressHcStatus,
      'ipv4LocalAddresses': ipv4LocalAddresses,
      'ipv6Address': ipv6Address,
      'ipv6AddressHcStatus': ipv6AddressHcStatus,
      'ipv6LocalAddresses': ipv6LocalAddresses,
    };
  }

  factory GetLoadBalancersBalancerZoneMappingLoadBalancerAddress.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerZoneMappingLoadBalancerAddress(
      address: (map['address'] as String).input(),
      allocationId: (map['allocationId'] as String).input(),
      eipType: (map['eipType'] as String).input(),
      intranetAddress: (map['intranetAddress'] as String).input(),
      intranetAddressHcStatus: (map['intranetAddressHcStatus'] as String).input(),
      ipv4LocalAddresses: ((map['ipv4LocalAddresses'] as List).cast<String>()).input(),
      ipv6Address: (map['ipv6Address'] as String).input(),
      ipv6AddressHcStatus: (map['ipv6AddressHcStatus'] as String).input(),
      ipv6LocalAddresses: ((map['ipv6LocalAddresses'] as List).cast<String>()).input(),
    );
  }
}


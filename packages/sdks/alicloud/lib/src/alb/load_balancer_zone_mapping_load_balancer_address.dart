// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerZoneMappingLoadBalancerAddress {
  /// An IP address of the IPv4 type.
  final pulumi.Input<String>? address;
  /// The elastic IP identifier.
  final pulumi.Input<String>? allocationId;
  /// The type of the public EIP. Value:
  final pulumi.Input<String>? eipType;
  /// IPv4 private network address.
  final pulumi.Input<String>? intranetAddress;
  /// The private network IPv4 address detection status of the application-oriented load balancing instance.
  final pulumi.Input<String>? intranetAddressHcStatus;
  /// IPv4 Local address list. The list of addresses used by ALB to interact with the backend service.
  final pulumi.Input<List<String>>? ipv4LocalAddresses;
  /// An IP address of the IPv6 type.
  final pulumi.Input<String>? ipv6Address;
  /// The IPv6 address detection status of the application-based load balancing instance.
  final pulumi.Input<String>? ipv6AddressHcStatus;
  /// IPv6 Local address list. The list of addresses used by ALB to interact with the backend service.
  final pulumi.Input<List<String>>? ipv6LocalAddresses;

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
      address: map['address'] == null ? null : (map['address']! as String).input(),
      allocationId: map['allocationId'] == null ? null : (map['allocationId']! as String).input(),
      eipType: map['eipType'] == null ? null : (map['eipType']! as String).input(),
      intranetAddress: map['intranetAddress'] == null ? null : (map['intranetAddress']! as String).input(),
      intranetAddressHcStatus: map['intranetAddressHcStatus'] == null ? null : (map['intranetAddressHcStatus']! as String).input(),
      ipv4LocalAddresses: map['ipv4LocalAddresses'] == null ? null : ((map['ipv4LocalAddresses']! as List).cast<String>()).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      ipv6AddressHcStatus: map['ipv6AddressHcStatus'] == null ? null : (map['ipv6AddressHcStatus']! as String).input(),
      ipv6LocalAddresses: map['ipv6LocalAddresses'] == null ? null : ((map['ipv6LocalAddresses']! as List).cast<String>()).input(),
    );
  }
}


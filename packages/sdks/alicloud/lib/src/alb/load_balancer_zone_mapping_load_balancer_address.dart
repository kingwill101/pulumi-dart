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

  factory LoadBalancerZoneMappingLoadBalancerAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerZoneMappingLoadBalancerAddress(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allocationId: (() {
        final guardedValue = map['allocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eipType: (() {
        final guardedValue = map['eipType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intranetAddress: (() {
        final guardedValue = map['intranetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intranetAddressHcStatus: (() {
        final guardedValue = map['intranetAddressHcStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4LocalAddresses: (() {
        final guardedValue = map['ipv4LocalAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6AddressHcStatus: (() {
        final guardedValue = map['ipv6AddressHcStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6LocalAddresses: (() {
        final guardedValue = map['ipv6LocalAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

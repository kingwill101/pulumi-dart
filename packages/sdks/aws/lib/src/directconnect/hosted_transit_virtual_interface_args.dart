// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_transit_virtual_interface_hosted_transit_virtual_interface_args_doc}
/// The set of arguments for HostedTransitVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_transit_virtual_interface_hosted_transit_virtual_interface_args_doc}
class HostedTransitVirtualInterfaceArgs {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String> addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  final pulumi.Input<String>? amazonAddress;
  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final pulumi.Input<int> bgpAsn;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String>? bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final pulumi.Input<String> connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final pulumi.Input<String>? customerAddress;
  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  final pulumi.Input<int>? mtu;
  /// The name for the virtual interface.
  final pulumi.Input<String>? name;
  /// The AWS account that will own the new virtual interface.
  final pulumi.Input<String> ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  /// Creates a new [HostedTransitVirtualInterfaceArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [mtu] The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  /// [name] The name for the virtual interface.
  /// [ownerAccountId] The AWS account that will own the new virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vlan] The VLAN ID.
  HostedTransitVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    this.mtu,
    this.name,
    required this.ownerAccountId,
    this.region,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'amazonAddress': ?amazonAddress,
      'bgpAsn': bgpAsn,
      'bgpAuthKey': ?bgpAuthKey,
      'connectionId': connectionId,
      'customerAddress': ?customerAddress,
      'mtu': ?mtu,
      'name': ?name,
      'ownerAccountId': ownerAccountId,
      'region': ?region,
      'vlan': vlan,
    };
  }

  factory HostedTransitVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceArgs(
      addressFamily: (map['addressFamily'] as String).input(),
      amazonAddress: map['amazonAddress'] == null ? null : (map['amazonAddress'] as String).input(),
      bgpAsn: (map['bgpAsn'] as int).input(),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : (map['bgpAuthKey'] as String).input(),
      connectionId: (map['connectionId'] as String).input(),
      customerAddress: map['customerAddress'] == null ? null : (map['customerAddress'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerAccountId: (map['ownerAccountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vlan: (map['vlan'] as int).input(),
    );
  }
}


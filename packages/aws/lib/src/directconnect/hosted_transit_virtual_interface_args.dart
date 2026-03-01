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
    required String addressFamily,
    String? amazonAddress,
    required int bgpAsn,
    String? bgpAuthKey,
    required String connectionId,
    String? customerAddress,
    int? mtu,
    String? name,
    required String ownerAccountId,
    String? region,
    required int vlan,
  }) : addressFamily = pulumi.Input.asInput<String>(addressFamily),
       amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
       bgpAsn = pulumi.Input.asInput<int>(bgpAsn),
       bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
       connectionId = pulumi.Input.asInput<String>(connectionId),
       customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
       mtu = pulumi.Input.asOptionalInput<int>(mtu),
       name = pulumi.Input.asOptionalInput<String>(name),
       ownerAccountId = pulumi.Input.asInput<String>(ownerAccountId),
       region = pulumi.Input.asOptionalInput<String>(region),
       vlan = pulumi.Input.asInput<int>(vlan);

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
      addressFamily: map['addressFamily'] as String,
      amazonAddress: map['amazonAddress'] == null
          ? null
          : map['amazonAddress'] as String,
      bgpAsn: map['bgpAsn'] as int,
      bgpAuthKey: map['bgpAuthKey'] == null
          ? null
          : map['bgpAuthKey'] as String,
      connectionId: map['connectionId'] as String,
      customerAddress: map['customerAddress'] == null
          ? null
          : map['customerAddress'] as String,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      ownerAccountId: map['ownerAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vlan: map['vlan'] as int,
    );
  }
}

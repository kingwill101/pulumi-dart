// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostedTransitVirtualInterface.
class HostedTransitVirtualInterfaceArgs {
  /// The address family for the BGP peer. `ipv4 ` or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final Input<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  final Input<String>? amazonAddress;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final Input<int> bgpAsn;

  /// The authentication key for BGP configuration.
  final Input<String>? bgpAuthKey;

  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final Input<String> connectionId;

  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final Input<String>? customerAddress;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual transit interface can be either <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span> or <span pulumi-lang-nodejs="`8500`" pulumi-lang-dotnet="`8500`" pulumi-lang-go="`8500`" pulumi-lang-python="`8500`" pulumi-lang-yaml="`8500`" pulumi-lang-java="`8500`">`8500`</span> (jumbo frames). Default is <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>.
  final Input<int>? mtu;

  /// The name for the virtual interface.
  final Input<String>? name;

  /// The AWS account that will own the new virtual interface.
  final Input<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The VLAN ID.
  final Input<int> vlan;

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
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    final amazonAddressValue = amazonAddress;
    if (amazonAddressValue != null) {
      map['amazonAddress'] = amazonAddressValue;
    }
    map['bgpAsn'] = bgpAsn;
    final bgpAuthKeyValue = bgpAuthKey;
    if (bgpAuthKeyValue != null) {
      map['bgpAuthKey'] = bgpAuthKeyValue;
    }
    map['connectionId'] = connectionId;
    final customerAddressValue = customerAddress;
    if (customerAddressValue != null) {
      map['customerAddress'] = customerAddressValue;
    }
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ownerAccountId'] = ownerAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vlan'] = vlan;
    return map;
  }

  factory HostedTransitVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return HostedTransitVirtualInterfaceArgs(
      addressFamily: Input.asInput<String>(map['addressFamily']),
      amazonAddress: Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: Input.asOptionalInput<String>(map['bgpAuthKey']),
      connectionId: Input.asInput<String>(map['connectionId']),
      customerAddress: Input.asOptionalInput<String>(map['customerAddress']),
      mtu: Input.asOptionalInput<int>(map['mtu']),
      name: Input.asOptionalInput<String>(map['name']),
      ownerAccountId: Input.asInput<String>(map['ownerAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
      vlan: Input.asInput<int>(map['vlan']),
    );
  }
}

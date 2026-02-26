// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PrivateVirtualInterface.
class PrivateVirtualInterfaceArgs {
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

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final Input<String>? dxGatewayId;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual private interface can be either <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span> or <span pulumi-lang-nodejs="`9001`" pulumi-lang-dotnet="`9001`" pulumi-lang-go="`9001`" pulumi-lang-python="`9001`" pulumi-lang-yaml="`9001`" pulumi-lang-java="`9001`">`9001`</span> (jumbo frames). Default is <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>.
  final Input<int>? mtu;

  /// The name for the virtual interface.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether to enable or disable SiteLink.
  final Input<bool>? sitelinkEnabled;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VLAN ID.
  final Input<int> vlan;

  /// The ID of the virtual private gateway to which to connect the virtual interface.
  final Input<String>? vpnGatewayId;

  PrivateVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    this.dxGatewayId,
    this.mtu,
    this.name,
    this.region,
    this.sitelinkEnabled,
    this.tags,
    required this.vlan,
    this.vpnGatewayId,
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
    final dxGatewayIdValue = dxGatewayId;
    if (dxGatewayIdValue != null) {
      map['dxGatewayId'] = dxGatewayIdValue;
    }
    final mtuValue = mtu;
    if (mtuValue != null) {
      map['mtu'] = mtuValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sitelinkEnabledValue = sitelinkEnabled;
    if (sitelinkEnabledValue != null) {
      map['sitelinkEnabled'] = sitelinkEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vlan'] = vlan;
    final vpnGatewayIdValue = vpnGatewayId;
    if (vpnGatewayIdValue != null) {
      map['vpnGatewayId'] = vpnGatewayIdValue;
    }
    return map;
  }

  factory PrivateVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateVirtualInterfaceArgs(
      addressFamily: Input.asInput<String>(map['addressFamily']),
      amazonAddress: Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: Input.asOptionalInput<String>(map['bgpAuthKey']),
      connectionId: Input.asInput<String>(map['connectionId']),
      customerAddress: Input.asOptionalInput<String>(map['customerAddress']),
      dxGatewayId: Input.asOptionalInput<String>(map['dxGatewayId']),
      mtu: Input.asOptionalInput<int>(map['mtu']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sitelinkEnabled: Input.asOptionalInput<bool>(map['sitelinkEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vlan: Input.asInput<int>(map['vlan']),
      vpnGatewayId: Input.asOptionalInput<String>(map['vpnGatewayId']),
    );
  }
}

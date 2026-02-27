// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TransitVirtualInterface.
class TransitVirtualInterfaceArgs {
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

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String> dxGatewayId;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  final pulumi.Input<int>? mtu;

  /// The name for the virtual interface.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Indicates whether to enable or disable SiteLink.
  final pulumi.Input<bool>? sitelinkEnabled;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  TransitVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    required this.dxGatewayId,
    this.mtu,
    this.name,
    this.region,
    this.sitelinkEnabled,
    this.tags,
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
    map['dxGatewayId'] = dxGatewayId;
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
    return map;
  }

  factory TransitVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return TransitVirtualInterfaceArgs(
      addressFamily: pulumi.Input.asInput<String>(map['addressFamily']),
      amazonAddress: pulumi.Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: pulumi.Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: pulumi.Input.asOptionalInput<String>(map['bgpAuthKey']),
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      customerAddress:
          pulumi.Input.asOptionalInput<String>(map['customerAddress']),
      dxGatewayId: pulumi.Input.asInput<String>(map['dxGatewayId']),
      mtu: pulumi.Input.asOptionalInput<int>(map['mtu']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sitelinkEnabled:
          pulumi.Input.asOptionalInput<bool>(map['sitelinkEnabled']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vlan: pulumi.Input.asInput<int>(map['vlan']),
    );
  }
}

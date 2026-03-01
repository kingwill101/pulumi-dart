// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_transit_virtual_interface_transit_virtual_interface_args_doc}
/// The set of arguments for TransitVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_directconnect_transit_virtual_interface_transit_virtual_interface_args_doc}
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

  /// Creates a new [TransitVirtualInterfaceArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [mtu] The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// [name] The name for the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sitelinkEnabled] Indicates whether to enable or disable SiteLink.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vlan] The VLAN ID.
  TransitVirtualInterfaceArgs({
    required pulumi.Output<String> addressFamily,
    pulumi.Output<String>? amazonAddress,
    required pulumi.Output<int> bgpAsn,
    pulumi.Output<String>? bgpAuthKey,
    required pulumi.Output<String> connectionId,
    pulumi.Output<String>? customerAddress,
    required pulumi.Output<String> dxGatewayId,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? sitelinkEnabled,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<int> vlan,
  }) :
      addressFamily = pulumi.Input.asInput<String>(addressFamily),
      amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
      bgpAsn = pulumi.Input.asInput<int>(bgpAsn),
      bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
      connectionId = pulumi.Input.asInput<String>(connectionId),
      customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
      dxGatewayId = pulumi.Input.asInput<String>(dxGatewayId),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      sitelinkEnabled = pulumi.Input.asOptionalInput<bool>(sitelinkEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vlan = pulumi.Input.asInput<int>(vlan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'amazonAddress': ?amazonAddress,
      'bgpAsn': bgpAsn,
      'bgpAuthKey': ?bgpAuthKey,
      'connectionId': connectionId,
      'customerAddress': ?customerAddress,
      'dxGatewayId': dxGatewayId,
      'mtu': ?mtu,
      'name': ?name,
      'region': ?region,
      'sitelinkEnabled': ?sitelinkEnabled,
      'tags': ?tags,
      'vlan': vlan,
    };
  }

  factory TransitVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return TransitVirtualInterfaceArgs(
      addressFamily: pulumi.Output.create<String>(map['addressFamily'] as String),
      amazonAddress: map['amazonAddress'] == null ? null : pulumi.Output.create<String>(map['amazonAddress'] as String),
      bgpAsn: pulumi.Output.create<int>(map['bgpAsn'] as int),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : pulumi.Output.create<String>(map['bgpAuthKey'] as String),
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      customerAddress: map['customerAddress'] == null ? null : pulumi.Output.create<String>(map['customerAddress'] as String),
      dxGatewayId: pulumi.Output.create<String>(map['dxGatewayId'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sitelinkEnabled: map['sitelinkEnabled'] == null ? null : pulumi.Output.create<bool>(map['sitelinkEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vlan: pulumi.Output.create<int>(map['vlan'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_public_virtual_interface_public_virtual_interface_args_doc}
/// The set of arguments for PublicVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_directconnect_public_virtual_interface_public_virtual_interface_args_doc}
class PublicVirtualInterfaceArgs {
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
  /// The name for the virtual interface.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of routes to be advertised to the AWS network in this region.
  final pulumi.Input<List<String>> routeFilterPrefixes;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  /// Creates a new [PublicVirtualInterfaceArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [bgpAsn] The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [name] The name for the virtual interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeFilterPrefixes] A list of routes to be advertised to the AWS network in this region.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vlan] The VLAN ID.
  PublicVirtualInterfaceArgs({
    required pulumi.Output<String> addressFamily,
    pulumi.Output<String>? amazonAddress,
    required pulumi.Output<int> bgpAsn,
    pulumi.Output<String>? bgpAuthKey,
    required pulumi.Output<String> connectionId,
    pulumi.Output<String>? customerAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> routeFilterPrefixes,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<int> vlan,
  }) :
      addressFamily = pulumi.Input.asInput<String>(addressFamily),
      amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
      bgpAsn = pulumi.Input.asInput<int>(bgpAsn),
      bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
      connectionId = pulumi.Input.asInput<String>(connectionId),
      customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeFilterPrefixes = pulumi.Input.asInput<List<String>>(routeFilterPrefixes),
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
      'name': ?name,
      'region': ?region,
      'routeFilterPrefixes': routeFilterPrefixes,
      'tags': ?tags,
      'vlan': vlan,
    };
  }

  factory PublicVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return PublicVirtualInterfaceArgs(
      addressFamily: pulumi.Output.create<String>(map['addressFamily'] as String),
      amazonAddress: map['amazonAddress'] == null ? null : pulumi.Output.create<String>(map['amazonAddress'] as String),
      bgpAsn: pulumi.Output.create<int>(map['bgpAsn'] as int),
      bgpAuthKey: map['bgpAuthKey'] == null ? null : pulumi.Output.create<String>(map['bgpAuthKey'] as String),
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      customerAddress: map['customerAddress'] == null ? null : pulumi.Output.create<String>(map['customerAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeFilterPrefixes: pulumi.Output.create<List<String>>((map['routeFilterPrefixes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vlan: pulumi.Output.create<int>(map['vlan'] as int),
    );
  }
}


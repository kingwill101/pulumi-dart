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
  final pulumi.Input<String?>? amazonAddress;
  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  final pulumi.Input<int> bgpAsn;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String?>? bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final pulumi.Input<String> connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final pulumi.Input<String?>? customerAddress;
  /// The name for the virtual interface.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of routes to be advertised to the AWS network in this region.
  final pulumi.Input<List<String>> routeFilterPrefixes;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
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
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vlan] The VLAN ID.
  const PublicVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    this.name,
    this.region,
    required this.routeFilterPrefixes,
    this.tags,
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
      'name': ?name,
      'region': ?region,
      'routeFilterPrefixes': routeFilterPrefixes,
      'tags': ?tags,
      'vlan': vlan,
    };
  }

  factory PublicVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return PublicVirtualInterfaceArgs(
      addressFamily: pulumi.Input.fromValue(map['addressFamily'] as String),
      amazonAddress: (() { final guardedValue = map['amazonAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsn: pulumi.Input.fromValue((map['bgpAsn'] as num).toInt()),
      bgpAuthKey: (() { final guardedValue = map['bgpAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      customerAddress: (() { final guardedValue = map['customerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeFilterPrefixes: pulumi.Input.fromValue((map['routeFilterPrefixes'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vlan: pulumi.Input.fromValue((map['vlan'] as num).toInt()),
    );
  }
}

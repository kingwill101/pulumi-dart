// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PublicVirtualInterface.
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

  PublicVirtualInterfaceArgs({
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeFilterPrefixes'] = routeFilterPrefixes;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vlan'] = vlan;
    return map;
  }

  factory PublicVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return PublicVirtualInterfaceArgs(
      addressFamily: pulumi.Input.asInput<String>(map['addressFamily']),
      amazonAddress: pulumi.Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: pulumi.Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: pulumi.Input.asOptionalInput<String>(map['bgpAuthKey']),
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      customerAddress:
          pulumi.Input.asOptionalInput<String>(map['customerAddress']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeFilterPrefixes:
          pulumi.Input.asInput<List<String>>(map['routeFilterPrefixes']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vlan: pulumi.Input.asInput<int>(map['vlan']),
    );
  }
}

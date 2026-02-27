// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for HostedPublicVirtualInterface.
class HostedPublicVirtualInterfaceArgs {
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

  /// The AWS account that will own the new virtual interface.
  final pulumi.Input<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of routes to be advertised to the AWS network in this region.
  final pulumi.Input<List<String>> routeFilterPrefixes;

  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  HostedPublicVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    required this.bgpAsn,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    this.name,
    required this.ownerAccountId,
    this.region,
    required this.routeFilterPrefixes,
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
    map['ownerAccountId'] = ownerAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeFilterPrefixes'] = routeFilterPrefixes;
    map['vlan'] = vlan;
    return map;
  }

  factory HostedPublicVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return HostedPublicVirtualInterfaceArgs(
      addressFamily: pulumi.Input.asInput<String>(map['addressFamily']),
      amazonAddress: pulumi.Input.asOptionalInput<String>(map['amazonAddress']),
      bgpAsn: pulumi.Input.asInput<int>(map['bgpAsn']),
      bgpAuthKey: pulumi.Input.asOptionalInput<String>(map['bgpAuthKey']),
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      customerAddress:
          pulumi.Input.asOptionalInput<String>(map['customerAddress']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      ownerAccountId: pulumi.Input.asInput<String>(map['ownerAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeFilterPrefixes:
          pulumi.Input.asInput<List<String>>(map['routeFilterPrefixes']),
      vlan: pulumi.Input.asInput<int>(map['vlan']),
    );
  }
}

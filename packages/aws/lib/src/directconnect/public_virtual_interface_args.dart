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
    required String addressFamily,
    String? amazonAddress,
    required int bgpAsn,
    String? bgpAuthKey,
    required String connectionId,
    String? customerAddress,
    String? name,
    String? region,
    required List<String> routeFilterPrefixes,
    Map<String, String>? tags,
    required int vlan,
  })  : addressFamily = pulumi.Input.asInput<String>(addressFamily),
        amazonAddress = pulumi.Input.asOptionalInput<String>(amazonAddress),
        bgpAsn = pulumi.Input.asInput<int>(bgpAsn),
        bgpAuthKey = pulumi.Input.asOptionalInput<String>(bgpAuthKey),
        connectionId = pulumi.Input.asInput<String>(connectionId),
        customerAddress = pulumi.Input.asOptionalInput<String>(customerAddress),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        routeFilterPrefixes =
            pulumi.Input.asInput<List<String>>(routeFilterPrefixes),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vlan = pulumi.Input.asInput<int>(vlan);

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
      addressFamily: map['addressFamily'] as String,
      amazonAddress:
          map['amazonAddress'] == null ? null : map['amazonAddress'] as String,
      bgpAsn: map['bgpAsn'] as int,
      bgpAuthKey:
          map['bgpAuthKey'] == null ? null : map['bgpAuthKey'] as String,
      connectionId: map['connectionId'] as String,
      customerAddress: map['customerAddress'] == null
          ? null
          : map['customerAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeFilterPrefixes: (map['routeFilterPrefixes'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vlan: map['vlan'] as int,
    );
  }
}

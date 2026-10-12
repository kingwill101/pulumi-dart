// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_hosted_public_virtual_interface_hosted_public_virtual_interface_args_doc}
/// The set of arguments for HostedPublicVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_directconnect_hosted_public_virtual_interface_hosted_public_virtual_interface_args_doc}
class HostedPublicVirtualInterfaceArgs {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String> addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  final pulumi.Input<String?>? amazonAddress;
  /// BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<int?>? bgpAsn;
  /// BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<String?>? bgpAsnLong;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String?>? bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final pulumi.Input<String> connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final pulumi.Input<String?>? customerAddress;
  /// The name for the virtual interface.
  final pulumi.Input<String?>? name;
  /// The AWS account that will own the new virtual interface.
  final pulumi.Input<String> ownerAccountId;
  /// Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Changing this forces a new resource to be created. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  final pulumi.Input<String?>? rateLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of routes to be advertised to the AWS network in this region.
  final pulumi.Input<List<String>> routeFilterPrefixes;
  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  /// Creates a new [HostedPublicVirtualInterfaceArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [bgpAsn] BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAsnLong] BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [name] The name for the virtual interface.
  /// [ownerAccountId] The AWS account that will own the new virtual interface.
  /// [rateLimit] Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Changing this forces a new resource to be created. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeFilterPrefixes] A list of routes to be advertised to the AWS network in this region.
  /// [vlan] The VLAN ID.
  const HostedPublicVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    this.bgpAsn,
    this.bgpAsnLong,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    this.name,
    required this.ownerAccountId,
    this.rateLimit,
    this.region,
    required this.routeFilterPrefixes,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'amazonAddress': ?amazonAddress,
      'bgpAsn': ?bgpAsn,
      'bgpAsnLong': ?bgpAsnLong,
      'bgpAuthKey': ?bgpAuthKey,
      'connectionId': connectionId,
      'customerAddress': ?customerAddress,
      'name': ?name,
      'ownerAccountId': ownerAccountId,
      'rateLimit': ?rateLimit,
      'region': ?region,
      'routeFilterPrefixes': routeFilterPrefixes,
      'vlan': vlan,
    };
  }

  factory HostedPublicVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return HostedPublicVirtualInterfaceArgs(
      addressFamily: pulumi.Input.fromValue(map['addressFamily'] as String),
      amazonAddress: (() { final guardedValue = map['amazonAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpAsnLong: (() { final guardedValue = map['bgpAsnLong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAuthKey: (() { final guardedValue = map['bgpAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      customerAddress: (() { final guardedValue = map['customerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: pulumi.Input.fromValue(map['ownerAccountId'] as String),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeFilterPrefixes: pulumi.Input.fromValue((map['routeFilterPrefixes'] as List).cast<String>()),
      vlan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['vlan'])),
    );
  }
}

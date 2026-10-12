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
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  final pulumi.Input<String> dxGatewayId;
  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  final pulumi.Input<int?>? mtu;
  /// The name for the virtual interface.
  final pulumi.Input<String?>? name;
  /// The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv4;
  /// The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv6;
  /// Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  final pulumi.Input<String?>? rateLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Indicates whether to enable or disable SiteLink.
  final pulumi.Input<bool?>? sitelinkEnabled;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The VLAN ID.
  final pulumi.Input<int> vlan;

  /// Creates a new [TransitVirtualInterfaceArgs].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [bgpAsn] BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAsnLong] BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [dxGatewayId] The ID of the Direct Connect gateway to which to connect the virtual interface.
  /// [mtu] The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// [name] The name for the virtual interface.
  /// [prefixPoolAllocatedCountIpv4] The number of inbound IPv4 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [prefixPoolAllocatedCountIpv6] The number of inbound IPv6 route prefixes to allocate to the virtual interface. Valid values are `0` to `1000`. If not specified, AWS applies the default allocation of `100`.
  /// [rateLimit] Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sitelinkEnabled] Indicates whether to enable or disable SiteLink.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vlan] The VLAN ID.
  const TransitVirtualInterfaceArgs({
    required this.addressFamily,
    this.amazonAddress,
    this.bgpAsn,
    this.bgpAsnLong,
    this.bgpAuthKey,
    required this.connectionId,
    this.customerAddress,
    required this.dxGatewayId,
    this.mtu,
    this.name,
    this.prefixPoolAllocatedCountIpv4,
    this.prefixPoolAllocatedCountIpv6,
    this.rateLimit,
    this.region,
    this.sitelinkEnabled,
    this.tags,
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
      'dxGatewayId': dxGatewayId,
      'mtu': ?mtu,
      'name': ?name,
      'prefixPoolAllocatedCountIpv4': ?prefixPoolAllocatedCountIpv4,
      'prefixPoolAllocatedCountIpv6': ?prefixPoolAllocatedCountIpv6,
      'rateLimit': ?rateLimit,
      'region': ?region,
      'sitelinkEnabled': ?sitelinkEnabled,
      'tags': ?tags,
      'vlan': vlan,
    };
  }

  factory TransitVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return TransitVirtualInterfaceArgs(
      addressFamily: pulumi.Input.fromValue(map['addressFamily'] as String),
      amazonAddress: (() { final guardedValue = map['amazonAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpAsnLong: (() { final guardedValue = map['bgpAsnLong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAuthKey: (() { final guardedValue = map['bgpAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      customerAddress: (() { final guardedValue = map['customerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dxGatewayId: pulumi.Input.fromValue(map['dxGatewayId'] as String),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixPoolAllocatedCountIpv4: (() { final guardedValue = map['prefixPoolAllocatedCountIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      prefixPoolAllocatedCountIpv6: (() { final guardedValue = map['prefixPoolAllocatedCountIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sitelinkEnabled: (() { final guardedValue = map['sitelinkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vlan: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['vlan'])),
    );
  }
}

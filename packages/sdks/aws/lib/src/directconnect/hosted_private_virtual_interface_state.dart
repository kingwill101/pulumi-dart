// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedPrivateVirtualInterface resources.
class HostedPrivateVirtualInterfaceState {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  final pulumi.Input<String?>? addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  final pulumi.Input<String?>? amazonAddress;
  final pulumi.Input<String?>? amazonSideAsn;
  /// The ARN of the virtual interface.
  final pulumi.Input<String?>? arn;
  /// The Direct Connect endpoint on which the virtual interface terminates.
  final pulumi.Input<String?>? awsDevice;
  /// BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<int?>? bgpAsn;
  /// BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  final pulumi.Input<String?>? bgpAsnLong;
  /// The authentication key for BGP configuration.
  final pulumi.Input<String?>? bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  final pulumi.Input<String?>? connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  final pulumi.Input<String?>? customerAddress;
  /// Indicates whether jumbo frames (9001 MTU) are supported.
  final pulumi.Input<bool?>? jumboFrameCapable;
  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual private interface can be either `1500` or `9001` (jumbo frames). Default is `1500`.
  final pulumi.Input<int?>? mtu;
  /// The name for the virtual interface.
  final pulumi.Input<String?>? name;
  /// The AWS account that will own the new virtual interface.
  final pulumi.Input<String?>? ownerAccountId;
  /// The number of inbound IPv4 route prefixes allocated to the virtual interface.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv4;
  /// The number of inbound IPv6 route prefixes allocated to the virtual interface.
  final pulumi.Input<int?>? prefixPoolAllocatedCountIpv6;
  /// Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Changing this forces a new resource to be created. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  final pulumi.Input<String?>? rateLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The VLAN ID.
  final pulumi.Input<int?>? vlan;

  /// Creates a new [HostedPrivateVirtualInterfaceState].
  /// [addressFamily] The address family for the BGP peer. `ipv4 ` or `ipv6`.
  /// [amazonAddress] The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  /// [amazonSideAsn] Optional.
  /// [arn] The ARN of the virtual interface.
  /// [awsDevice] The Direct Connect endpoint on which the virtual interface terminates.
  /// [bgpAsn] BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAsnLong] BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  /// [bgpAuthKey] The authentication key for BGP configuration.
  /// [connectionId] The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  /// [customerAddress] The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  /// [jumboFrameCapable] Indicates whether jumbo frames (9001 MTU) are supported.
  /// [mtu] The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual private interface can be either `1500` or `9001` (jumbo frames). Default is `1500`.
  /// [name] The name for the virtual interface.
  /// [ownerAccountId] The AWS account that will own the new virtual interface.
  /// [prefixPoolAllocatedCountIpv4] The number of inbound IPv4 route prefixes allocated to the virtual interface.
  /// [prefixPoolAllocatedCountIpv6] The number of inbound IPv6 route prefixes allocated to the virtual interface.
  /// [rateLimit] Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Changing this forces a new resource to be created. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vlan] The VLAN ID.
  const HostedPrivateVirtualInterfaceState({
    this.addressFamily,
    this.amazonAddress,
    this.amazonSideAsn,
    this.arn,
    this.awsDevice,
    this.bgpAsn,
    this.bgpAsnLong,
    this.bgpAuthKey,
    this.connectionId,
    this.customerAddress,
    this.jumboFrameCapable,
    this.mtu,
    this.name,
    this.ownerAccountId,
    this.prefixPoolAllocatedCountIpv4,
    this.prefixPoolAllocatedCountIpv6,
    this.rateLimit,
    this.region,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'amazonAddress': ?amazonAddress,
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'awsDevice': ?awsDevice,
      'bgpAsn': ?bgpAsn,
      'bgpAsnLong': ?bgpAsnLong,
      'bgpAuthKey': ?bgpAuthKey,
      'connectionId': ?connectionId,
      'customerAddress': ?customerAddress,
      'jumboFrameCapable': ?jumboFrameCapable,
      'mtu': ?mtu,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'prefixPoolAllocatedCountIpv4': ?prefixPoolAllocatedCountIpv4,
      'prefixPoolAllocatedCountIpv6': ?prefixPoolAllocatedCountIpv6,
      'rateLimit': ?rateLimit,
      'region': ?region,
      'vlan': ?vlan,
    };
  }

  factory HostedPrivateVirtualInterfaceState.fromMap(Map<String, dynamic> map) {
    return HostedPrivateVirtualInterfaceState(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      amazonAddress: (() { final guardedValue = map['amazonAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsDevice: (() { final guardedValue = map['awsDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpAsnLong: (() { final guardedValue = map['bgpAsnLong']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAuthKey: (() { final guardedValue = map['bgpAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionId: (() { final guardedValue = map['connectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerAddress: (() { final guardedValue = map['customerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jumboFrameCapable: (() { final guardedValue = map['jumboFrameCapable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixPoolAllocatedCountIpv4: (() { final guardedValue = map['prefixPoolAllocatedCountIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      prefixPoolAllocatedCountIpv6: (() { final guardedValue = map['prefixPoolAllocatedCountIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv6_internet_bandwidth_ipv6_internet_bandwidth_args_doc}
/// The set of arguments for Ipv6InternetBandwidth.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv6_internet_bandwidth_ipv6_internet_bandwidth_args_doc}
class Ipv6InternetBandwidthArgs {
  /// The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`. Valid values: `1` to `5000`. **NOTE:** If `internet_charge_type` is set to `PayByTraffic`, the amount of Internet bandwidth resources of the IPv6 address is limited by the specification of the IPv6 gateway. `Small` (default): specifies the Free edition and the Internet bandwidth is from `1` to `500` Mbit/s. `Medium`: specifies the Medium edition and the Internet bandwidth is from `1` to `1000` Mbit/s. `Large`: specifies the Large edition and the Internet bandwidth is from `1` to `2000` Mbit/s.
  final pulumi.Input<int> bandwidth;

  /// The metering method of the Internet bandwidth resources of the IPv6 gateway. Valid values: `PayByBandwidth`, `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;

  /// The ID of the IPv6 address instance.
  final pulumi.Input<String> ipv6AddressId;

  /// The ID of the IPv6 gateway to which the IPv6 address belongs.
  final pulumi.Input<String> ipv6GatewayId;

  /// Creates a new [Ipv6InternetBandwidthArgs].
  /// [bandwidth] The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`. Valid values: `1` to `5000`. **NOTE:** If `internet_charge_type` is set to `PayByTraffic`, the amount of Internet bandwidth resources of the IPv6 address is limited by the specification of the IPv6 gateway. `Small` (default): specifies the Free edition and the Internet bandwidth is from `1` to `500` Mbit/s. `Medium`: specifies the Medium edition and the Internet bandwidth is from `1` to `1000` Mbit/s. `Large`: specifies the Large edition and the Internet bandwidth is from `1` to `2000` Mbit/s.
  /// [internetChargeType] The metering method of the Internet bandwidth resources of the IPv6 gateway. Valid values: `PayByBandwidth`, `PayByTraffic`.
  /// [ipv6AddressId] The ID of the IPv6 address instance.
  /// [ipv6GatewayId] The ID of the IPv6 gateway to which the IPv6 address belongs.
  Ipv6InternetBandwidthArgs({
    required this.bandwidth,
    this.internetChargeType,
    required this.ipv6AddressId,
    required this.ipv6GatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'internetChargeType': ?internetChargeType,
      'ipv6AddressId': ipv6AddressId,
      'ipv6GatewayId': ipv6GatewayId,
    };
  }

  factory Ipv6InternetBandwidthArgs.fromMap(Map<String, dynamic> map) {
    return Ipv6InternetBandwidthArgs(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6AddressId: pulumi.Input.fromValue(map['ipv6AddressId'] as String),
      ipv6GatewayId: pulumi.Input.fromValue(map['ipv6GatewayId'] as String),
    );
  }
}

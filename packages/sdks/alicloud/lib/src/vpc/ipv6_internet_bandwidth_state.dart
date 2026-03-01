// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv6InternetBandwidth resources.
class Ipv6InternetBandwidthState {
  /// The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`. Valid values: `1` to `5000`. **NOTE:** If `internet_charge_type` is set to `PayByTraffic`, the amount of Internet bandwidth resources of the IPv6 address is limited by the specification of the IPv6 gateway. `Small` (default): specifies the Free edition and the Internet bandwidth is from `1` to `500` Mbit/s. `Medium`: specifies the Medium edition and the Internet bandwidth is from `1` to `1000` Mbit/s. `Large`: specifies the Large edition and the Internet bandwidth is from `1` to `2000` Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The metering method of the Internet bandwidth resources of the IPv6 gateway. Valid values: `PayByBandwidth`, `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;
  /// The ID of the IPv6 address instance.
  final pulumi.Input<String>? ipv6AddressId;
  /// The ID of the IPv6 gateway to which the IPv6 address belongs.
  final pulumi.Input<String>? ipv6GatewayId;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [Ipv6InternetBandwidthState].
  /// [bandwidth] The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`. Valid values: `1` to `5000`. **NOTE:** If `internet_charge_type` is set to `PayByTraffic`, the amount of Internet bandwidth resources of the IPv6 address is limited by the specification of the IPv6 gateway. `Small` (default): specifies the Free edition and the Internet bandwidth is from `1` to `500` Mbit/s. `Medium`: specifies the Medium edition and the Internet bandwidth is from `1` to `1000` Mbit/s. `Large`: specifies the Large edition and the Internet bandwidth is from `1` to `2000` Mbit/s.
  /// [internetChargeType] The metering method of the Internet bandwidth resources of the IPv6 gateway. Valid values: `PayByBandwidth`, `PayByTraffic`.
  /// [ipv6AddressId] The ID of the IPv6 address instance.
  /// [ipv6GatewayId] The ID of the IPv6 gateway to which the IPv6 address belongs.
  /// [status] The status of the resource.
  Ipv6InternetBandwidthState({
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? ipv6AddressId,
    pulumi.Output<String>? ipv6GatewayId,
    pulumi.Output<String>? status,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      ipv6AddressId = pulumi.Input.asOptionalInput<String>(ipv6AddressId),
      ipv6GatewayId = pulumi.Input.asOptionalInput<String>(ipv6GatewayId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'internetChargeType': ?internetChargeType,
      'ipv6AddressId': ?ipv6AddressId,
      'ipv6GatewayId': ?ipv6GatewayId,
      'status': ?status,
    };
  }

  factory Ipv6InternetBandwidthState.fromMap(Map<String, dynamic> map) {
    return Ipv6InternetBandwidthState(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      ipv6AddressId: map['ipv6AddressId'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressId'] as String),
      ipv6GatewayId: map['ipv6GatewayId'] == null ? null : pulumi.Output.create<String>(map['ipv6GatewayId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv6InternetBandwidthsBandwidth {
  /// The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`.
  final pulumi.Input<int> bandwidth;
  /// The ID of the Ipv6 Internet Bandwidth.
  final pulumi.Input<String> id;
  /// The metering method of the Internet bandwidth resources of the IPv6 gateway.
  final pulumi.Input<String> internetChargeType;
  /// The ID of the IPv6 address.
  final pulumi.Input<String> ipv6AddressId;
  /// The ID of the IPv6 gateway.
  final pulumi.Input<String> ipv6GatewayId;
  /// The ID of the Ipv6 Internet Bandwidth.
  final pulumi.Input<String> ipv6InternetBandwidthId;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The status of the resource. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  final pulumi.Input<String> status;

  /// Creates a new [GetIpv6InternetBandwidthsBandwidth].
  /// [bandwidth] The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`.
  /// [id] The ID of the Ipv6 Internet Bandwidth.
  /// [internetChargeType] The metering method of the Internet bandwidth resources of the IPv6 gateway.
  /// [ipv6AddressId] The ID of the IPv6 address.
  /// [ipv6GatewayId] The ID of the IPv6 gateway.
  /// [ipv6InternetBandwidthId] The ID of the Ipv6 Internet Bandwidth.
  /// [paymentType] The payment type of the resource.
  /// [status] The status of the resource. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  GetIpv6InternetBandwidthsBandwidth({
    required this.bandwidth,
    required this.id,
    required this.internetChargeType,
    required this.ipv6AddressId,
    required this.ipv6GatewayId,
    required this.ipv6InternetBandwidthId,
    required this.paymentType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'id': id,
      'internetChargeType': internetChargeType,
      'ipv6AddressId': ipv6AddressId,
      'ipv6GatewayId': ipv6GatewayId,
      'ipv6InternetBandwidthId': ipv6InternetBandwidthId,
      'paymentType': paymentType,
      'status': status,
    };
  }

  factory GetIpv6InternetBandwidthsBandwidth.fromMap(Map<String, dynamic> map) {
    return GetIpv6InternetBandwidthsBandwidth(
      bandwidth: (map['bandwidth'] as int).input(),
      id: (map['id'] as String).input(),
      internetChargeType: (map['internetChargeType'] as String).input(),
      ipv6AddressId: (map['ipv6AddressId'] as String).input(),
      ipv6GatewayId: (map['ipv6GatewayId'] as String).input(),
      ipv6InternetBandwidthId: (map['ipv6InternetBandwidthId'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}


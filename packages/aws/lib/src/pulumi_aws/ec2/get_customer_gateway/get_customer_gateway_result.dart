// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_customer_gateway_filter/get_customer_gateway_filter.dart';

/// Result data returned by getCustomerGateway.
class GetCustomerGatewayResult {
  /// ARN of the customer gateway.
  final String arn;

  /// Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  final int bgpAsn;

  /// Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  final int bgpAsnExtended;

  /// ARN for the customer gateway certificate.
  final String certificateArn;

  /// Name for the customer gateway device.
  final String deviceName;
  final List<GetCustomerGatewayFilter>? filters;
  final String id;

  /// IP address of the gateway's Internet-routable external interface.
  final String ipAddress;
  final String region;

  /// Map of key-value pairs assigned to the gateway.
  final Map<String, String> tags;

  /// Type of customer gateway. The only type AWS supports at this time is "ipsec.1".
  final String type;

  GetCustomerGatewayResult({
    required this.arn,
    required this.bgpAsn,
    required this.bgpAsnExtended,
    required this.certificateArn,
    required this.deviceName,
    this.filters,
    required this.id,
    required this.ipAddress,
    required this.region,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['bgpAsn'] = bgpAsn;
    map['bgpAsnExtended'] = bgpAsnExtended;
    map['certificateArn'] = certificateArn;
    map['deviceName'] = deviceName;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetCustomerGatewayFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipAddress'] = ipAddress;
    map['region'] = region;
    map['tags'] = tags;
    map['type'] = type;
    return map;
  }

  factory GetCustomerGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewayResult(
      arn: map['arn'] as String,
      bgpAsn: map['bgpAsn'] as int,
      bgpAsnExtended: map['bgpAsnExtended'] as int,
      certificateArn: map['certificateArn'] as String,
      deviceName: map['deviceName'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetCustomerGatewayFilter>(
              map['filters'],
              (value) => GetCustomerGatewayFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

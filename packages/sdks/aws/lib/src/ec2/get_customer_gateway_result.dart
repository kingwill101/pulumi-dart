// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_gateway_filter.dart';

/// Result data returned by getCustomerGateway.
class GetCustomerGatewayResult {
  /// ARN of the customer gateway.
  final String? arn;
  /// Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  final int? bgpAsn;
  /// Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  final int? bgpAsnExtended;
  /// ARN for the customer gateway certificate.
  final String? certificateArn;
  /// Name for the customer gateway device.
  final String? deviceName;
  final List<GetCustomerGatewayFilter>? filters;
  final String? id;
  /// IP address of the gateway's Internet-routable external interface.
  final String? ipAddress;
  final String? region;
  /// Map of key-value pairs assigned to the gateway.
  final Map<String, String>? tags;
  /// Type of customer gateway. The only type AWS supports at this time is "ipsec.1".
  final String? type;

  /// Creates a new [GetCustomerGatewayResult].
  /// [arn] ARN of the customer gateway.
  /// [bgpAsn] Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  /// [bgpAsnExtended] Gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  /// [certificateArn] ARN for the customer gateway certificate.
  /// [deviceName] Name for the customer gateway device.
  /// [filters] Optional.
  /// [id] Optional.
  /// [ipAddress] IP address of the gateway's Internet-routable external interface.
  /// [region] Optional.
  /// [tags] Map of key-value pairs assigned to the gateway.
  /// [type] Type of customer gateway. The only type AWS supports at this time is "ipsec.1".
  const GetCustomerGatewayResult({
    this.arn,
    this.bgpAsn,
    this.bgpAsnExtended,
    this.certificateArn,
    this.deviceName,
    this.filters,
    this.id,
    this.ipAddress,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpAsn': ?bgpAsn,
      'bgpAsnExtended': ?bgpAsnExtended,
      'certificateArn': ?certificateArn,
      'deviceName': ?deviceName,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomerGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetCustomerGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewayResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      bgpAsnExtended: (() { final guardedValue = map['bgpAsnExtended']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomerGatewayFilter>(guardedValue, (value) => GetCustomerGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

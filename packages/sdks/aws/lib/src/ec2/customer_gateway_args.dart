// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_customer_gateway_customer_gateway_args_doc}
/// The set of arguments for CustomerGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_customer_gateway_customer_gateway_args_doc}
class CustomerGatewayArgs {
  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `1` to `2147483647`. Conflicts with `bgp_asn_extended`.
  final pulumi.Input<String>? bgpAsn;
  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `2147483648` to `4294967295` Conflicts with `bgp_asn`.
  final pulumi.Input<String>? bgpAsnExtended;
  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  final pulumi.Input<String>? certificateArn;
  /// A name for the customer gateway device.
  final pulumi.Input<String>? deviceName;
  /// The IPv4 address for the customer gateway device's outside interface.
  final pulumi.Input<String>? ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of customer gateway. The only type AWS
  /// supports at this time is "ipsec.1".
  final pulumi.Input<String> type;

  /// Creates a new [CustomerGatewayArgs].
  /// [bgpAsn] The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `1` to `2147483647`. Conflicts with `bgp_asn_extended`.
  /// [bgpAsnExtended] The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `2147483648` to `4294967295` Conflicts with `bgp_asn`.
  /// [certificateArn] The Amazon Resource Name (ARN) for the customer gateway certificate.
  /// [deviceName] A name for the customer gateway device.
  /// [ipAddress] The IPv4 address for the customer gateway device's outside interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of customer gateway. The only type AWS
  CustomerGatewayArgs({
    this.bgpAsn,
    this.bgpAsnExtended,
    this.certificateArn,
    this.deviceName,
    this.ipAddress,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAsn': ?bgpAsn,
      'bgpAsnExtended': ?bgpAsnExtended,
      'certificateArn': ?certificateArn,
      'deviceName': ?deviceName,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory CustomerGatewayArgs.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayArgs(
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAsnExtended: (() { final guardedValue = map['bgpAsnExtended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


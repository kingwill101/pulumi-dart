// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CustomerGateway.
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
    final map = <String, dynamic>{};
    final bgpAsnValue = bgpAsn;
    if (bgpAsnValue != null) {
      map['bgpAsn'] = bgpAsnValue;
    }
    final bgpAsnExtendedValue = bgpAsnExtended;
    if (bgpAsnExtendedValue != null) {
      map['bgpAsnExtended'] = bgpAsnExtendedValue;
    }
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory CustomerGatewayArgs.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayArgs(
      bgpAsn: pulumi.Input.asOptionalInput<String>(map['bgpAsn']),
      bgpAsnExtended:
          pulumi.Input.asOptionalInput<String>(map['bgpAsnExtended']),
      certificateArn:
          pulumi.Input.asOptionalInput<String>(map['certificateArn']),
      deviceName: pulumi.Input.asOptionalInput<String>(map['deviceName']),
      ipAddress: pulumi.Input.asOptionalInput<String>(map['ipAddress']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}

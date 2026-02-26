// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomerGateway.
class CustomerGatewayArgs {
  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>. Conflicts with <span pulumi-lang-nodejs="`bgpAsnExtended`" pulumi-lang-dotnet="`BgpAsnExtended`" pulumi-lang-go="`bgpAsnExtended`" pulumi-lang-python="`bgp_asn_extended`" pulumi-lang-yaml="`bgpAsnExtended`" pulumi-lang-java="`bgpAsnExtended`">`bgp_asn_extended`</span>.
  final Input<String>? bgpAsn;

  /// The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  <span pulumi-lang-nodejs="`2147483648`" pulumi-lang-dotnet="`2147483648`" pulumi-lang-go="`2147483648`" pulumi-lang-python="`2147483648`" pulumi-lang-yaml="`2147483648`" pulumi-lang-java="`2147483648`">`2147483648`</span> to <span pulumi-lang-nodejs="`4294967295`" pulumi-lang-dotnet="`4294967295`" pulumi-lang-go="`4294967295`" pulumi-lang-python="`4294967295`" pulumi-lang-yaml="`4294967295`" pulumi-lang-java="`4294967295`">`4294967295`</span> Conflicts with <span pulumi-lang-nodejs="`bgpAsn`" pulumi-lang-dotnet="`BgpAsn`" pulumi-lang-go="`bgpAsn`" pulumi-lang-python="`bgp_asn`" pulumi-lang-yaml="`bgpAsn`" pulumi-lang-java="`bgpAsn`">`bgp_asn`</span>.
  final Input<String>? bgpAsnExtended;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  final Input<String>? certificateArn;

  /// A name for the customer gateway device.
  final Input<String>? deviceName;

  /// The IPv4 address for the customer gateway device's outside interface.
  final Input<String>? ipAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the gateway. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of customer gateway. The only type AWS
  /// supports at this time is "ipsec.1".
  final Input<String> type;

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
      bgpAsn: Input.asOptionalInput<String>(map['bgpAsn']),
      bgpAsnExtended: Input.asOptionalInput<String>(map['bgpAsnExtended']),
      certificateArn: Input.asOptionalInput<String>(map['certificateArn']),
      deviceName: Input.asOptionalInput<String>(map['deviceName']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}

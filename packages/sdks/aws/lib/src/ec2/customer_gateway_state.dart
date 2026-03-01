// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomerGateway resources.
class CustomerGatewayState {
  /// The ARN of the customer gateway.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of customer gateway. The only type AWS
  /// supports at this time is "ipsec.1".
  final pulumi.Input<String>? type;

  /// Creates a new [CustomerGatewayState].
  /// [arn] The ARN of the customer gateway.
  /// [bgpAsn] The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `1` to `2147483647`. Conflicts with `bgp_asn_extended`.
  /// [bgpAsnExtended] The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN). Valid values are from  `2147483648` to `4294967295` Conflicts with `bgp_asn`.
  /// [certificateArn] The Amazon Resource Name (ARN) for the customer gateway certificate.
  /// [deviceName] A name for the customer gateway device.
  /// [ipAddress] The IPv4 address for the customer gateway device's outside interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the gateway. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of customer gateway. The only type AWS
  CustomerGatewayState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bgpAsn,
    pulumi.Output<String>? bgpAsnExtended,
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? deviceName,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bgpAsn = pulumi.Input.asOptionalInput<String>(bgpAsn),
      bgpAsnExtended = pulumi.Input.asOptionalInput<String>(bgpAsnExtended),
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      deviceName = pulumi.Input.asOptionalInput<String>(deviceName),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpAsn': ?bgpAsn,
      'bgpAsnExtended': ?bgpAsnExtended,
      'certificateArn': ?certificateArn,
      'deviceName': ?deviceName,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory CustomerGatewayState.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bgpAsn: map['bgpAsn'] == null ? null : pulumi.Output.create<String>(map['bgpAsn'] as String),
      bgpAsnExtended: map['bgpAsnExtended'] == null ? null : pulumi.Output.create<String>(map['bgpAsnExtended'] as String),
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      deviceName: map['deviceName'] == null ? null : pulumi.Output.create<String>(map['deviceName'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}


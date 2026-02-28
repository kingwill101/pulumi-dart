// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_gateway_vpn_gateway_args_doc}
/// The set of arguments for VpnGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_gateway_vpn_gateway_args_doc}
class VpnGatewayArgs {
  /// The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
  final pulumi.Input<String>? amazonSideAsn;

  /// The Availability Zone for the virtual private gateway.
  final pulumi.Input<String>? availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC ID to create in.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpnGatewayArgs].
  /// [amazonSideAsn] The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
  /// [availabilityZone] The Availability Zone for the virtual private gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC ID to create in.
  VpnGatewayArgs({
    String? amazonSideAsn,
    String? availabilityZone,
    String? region,
    Map<String, String>? tags,
    String? vpcId,
  })  : amazonSideAsn = pulumi.Input.asOptionalInput<String>(amazonSideAsn),
        availabilityZone =
            pulumi.Input.asOptionalInput<String>(availabilityZone),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amazonSideAsnValue = amazonSideAsn;
    if (amazonSideAsnValue != null) {
      map['amazonSideAsn'] = amazonSideAsnValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory VpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayArgs(
      amazonSideAsn:
          map['amazonSideAsn'] == null ? null : map['amazonSideAsn'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

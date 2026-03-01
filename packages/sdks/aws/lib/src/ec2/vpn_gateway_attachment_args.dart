// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_gateway_attachment_vpn_gateway_attachment_args_doc}
/// The set of arguments for VpnGatewayAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_gateway_attachment_vpn_gateway_attachment_args_doc}
class VpnGatewayAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [VpnGatewayAttachmentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  /// [vpnGatewayId] The ID of the Virtual Private Gateway.
  VpnGatewayAttachmentArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vpnGatewayId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcId': vpcId,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory VpnGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayAttachmentArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vpnGatewayId: pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}


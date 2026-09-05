// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_gateway_attachment_vpn_gateway_attachment_args_doc}
/// The set of arguments for VpnGatewayAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_gateway_attachment_vpn_gateway_attachment_args_doc}
class VpnGatewayAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [VpnGatewayAttachmentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  /// [vpnGatewayId] The ID of the Virtual Private Gateway.
  const VpnGatewayAttachmentArgs({
    this.region,
    required this.vpcId,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcId': vpcId,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory VpnGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayAttachmentArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}

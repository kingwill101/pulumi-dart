// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpnGatewayAttachment resources.
class VpnGatewayAttachmentState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [VpnGatewayAttachmentState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  /// [vpnGatewayId] The ID of the Virtual Private Gateway.
  VpnGatewayAttachmentState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcId': ?vpcId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VpnGatewayAttachmentState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayAttachmentState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}


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
    this.region,
    this.vpcId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcId': ?vpcId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VpnGatewayAttachmentState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayAttachmentState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId'] as String).input(),
    );
  }
}


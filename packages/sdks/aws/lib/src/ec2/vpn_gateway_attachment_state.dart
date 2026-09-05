// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpnGatewayAttachment resources.
class VpnGatewayAttachmentState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the VPC.
  final pulumi.Input<String?>? vpcId;
  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String?>? vpnGatewayId;

  /// Creates a new [VpnGatewayAttachmentState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC.
  /// [vpnGatewayId] The ID of the Virtual Private Gateway.
  const VpnGatewayAttachmentState({
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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

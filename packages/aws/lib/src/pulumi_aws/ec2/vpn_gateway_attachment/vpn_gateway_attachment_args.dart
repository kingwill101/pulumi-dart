// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpnGatewayAttachment.
class VpnGatewayAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// The ID of the Virtual Private Gateway.
  final pulumi.Input<String> vpnGatewayId;

  VpnGatewayAttachmentArgs({
    this.region,
    required this.vpcId,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    map['vpnGatewayId'] = vpnGatewayId;
    return map;
  }

  factory VpnGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayAttachmentArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
      vpnGatewayId: pulumi.Input.asInput<String>(map['vpnGatewayId']),
    );
  }
}

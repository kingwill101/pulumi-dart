// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpnGatewayAttachment.
class VpnGatewayAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the VPC.
  final Input<String> vpcId;

  /// The ID of the Virtual Private Gateway.
  final Input<String> vpnGatewayId;

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
      region: Input.asOptionalInput<String>(map['region']),
      vpcId: Input.asInput<String>(map['vpcId']),
      vpnGatewayId: Input.asInput<String>(map['vpnGatewayId']),
    );
  }
}

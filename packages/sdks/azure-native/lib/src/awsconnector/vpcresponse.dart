// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VPC
class VPCResponse {
  /// *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final pulumi.Input<String>? vpcId;

  /// *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final pulumi.Input<String>? vpcRegion;

  /// Creates a new [VPCResponse].
  /// [vpcId] *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  /// [vpcRegion] *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  VPCResponse({this.vpcId, this.vpcRegion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpcId': ?vpcId, 'vpcRegion': ?vpcRegion};
  }

  factory VPCResponse.fromMap(Map<String, dynamic> map) {
    return VPCResponse(
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcRegion: (() {
        final guardedValue = map['vpcRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

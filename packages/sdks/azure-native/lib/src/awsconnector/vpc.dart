// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VPC
class VPC {
  /// *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final pulumi.Input<String>? vpcId;
  /// *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final pulumi.Input<String>? vpcRegion;

  /// Creates a new [VPC].
  /// [vpcId] *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  /// [vpcRegion] *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  const VPC({
    this.vpcId,
    this.vpcRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
      'vpcRegion': ?vpcRegion,
    };
  }

  factory VPC.fromMap(Map<String, dynamic> map) {
    return VPC(
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcRegion: (() { final guardedValue = map['vpcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


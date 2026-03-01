// ignore_for_file: unused_element, unnecessary_cast


/// Definition of VPC
class VPCResponse {
  /// *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final String? vpcId;
  /// *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  final String? vpcRegion;

  /// Creates a new [VPCResponse].
  /// [vpcId] *Private hosted zones only:* The ID of an Amazon VPC.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  /// [vpcRegion] *Private hosted zones only:* The region that an Amazon VPC was created in.  For public hosted zones, omit ``VPCs``, ``VPCId``, and ``VPCRegion``.
  VPCResponse({
    this.vpcId,
    this.vpcRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
      'vpcRegion': ?vpcRegion,
    };
  }

  factory VPCResponse.fromMap(Map<String, dynamic> map) {
    return VPCResponse(
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vpcRegion: map['vpcRegion'] == null ? null : map['vpcRegion'] as String,
    );
  }
}


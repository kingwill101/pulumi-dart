// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcAssociationAuthorization.
class VpcAssociationAuthorizationArgs {
  /// The VPC to authorize for association with the private hosted zone.
  final Input<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  final Input<String>? vpcRegion;

  /// The ID of the private hosted zone that you want to authorize associating a VPC with.
  final Input<String> zoneId;

  VpcAssociationAuthorizationArgs({
    required this.vpcId,
    this.vpcRegion,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcId'] = vpcId;
    final vpcRegionValue = vpcRegion;
    if (vpcRegionValue != null) {
      map['vpcRegion'] = vpcRegionValue;
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory VpcAssociationAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return VpcAssociationAuthorizationArgs(
      vpcId: Input.asInput<String>(map['vpcId']),
      vpcRegion: Input.asOptionalInput<String>(map['vpcRegion']),
      zoneId: Input.asInput<String>(map['zoneId']),
    );
  }
}

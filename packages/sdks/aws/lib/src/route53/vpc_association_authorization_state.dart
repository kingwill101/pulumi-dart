// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAssociationAuthorization resources.
class VpcAssociationAuthorizationState {
  /// The VPC to authorize for association with the private hosted zone.
  final pulumi.Input<String>? vpcId;
  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String>? vpcRegion;
  /// The ID of the private hosted zone that you want to authorize associating a VPC with.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VpcAssociationAuthorizationState].
  /// [vpcId] The VPC to authorize for association with the private hosted zone.
  /// [vpcRegion] The VPC's region. Defaults to the region of the AWS provider.
  /// [zoneId] The ID of the private hosted zone that you want to authorize associating a VPC with.
  VpcAssociationAuthorizationState({
    this.vpcId,
    this.vpcRegion,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
      'vpcRegion': ?vpcRegion,
      'zoneId': ?zoneId,
    };
  }

  factory VpcAssociationAuthorizationState.fromMap(Map<String, dynamic> map) {
    return VpcAssociationAuthorizationState(
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
      vpcRegion: map['vpcRegion'] == null ? null : ((map['vpcRegion'] as String).input()).input(),
      zoneId: map['zoneId'] == null ? null : ((map['zoneId'] as String).input()).input(),
    );
  }
}


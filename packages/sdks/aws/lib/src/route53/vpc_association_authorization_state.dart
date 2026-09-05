// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAssociationAuthorization resources.
class VpcAssociationAuthorizationState {
  /// The VPC to authorize for association with the private hosted zone.
  final pulumi.Input<String?>? vpcId;
  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String?>? vpcRegion;
  /// The ID of the private hosted zone that you want to authorize associating a VPC with.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [VpcAssociationAuthorizationState].
  /// [vpcId] The VPC to authorize for association with the private hosted zone.
  /// [vpcRegion] The VPC's region. Defaults to the region of the AWS provider.
  /// [zoneId] The ID of the private hosted zone that you want to authorize associating a VPC with.
  const VpcAssociationAuthorizationState({
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
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcRegion: (() { final guardedValue = map['vpcRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

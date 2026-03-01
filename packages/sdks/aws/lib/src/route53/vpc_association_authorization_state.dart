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
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcRegion,
    pulumi.Output<String>? zoneId,
  }) :
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcRegion = pulumi.Input.asOptionalInput<String>(vpcRegion),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': ?vpcId,
      'vpcRegion': ?vpcRegion,
      'zoneId': ?zoneId,
    };
  }

  factory VpcAssociationAuthorizationState.fromMap(Map<String, dynamic> map) {
    return VpcAssociationAuthorizationState(
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcRegion: map['vpcRegion'] == null ? null : pulumi.Output.create<String>(map['vpcRegion'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}


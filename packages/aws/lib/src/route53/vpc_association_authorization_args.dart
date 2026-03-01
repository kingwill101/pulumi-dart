// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_vpc_association_authorization_vpc_association_authorization_args_doc}
/// The set of arguments for VpcAssociationAuthorization.
/// {@endtemplate}
/// {@macro pulumi_route53_vpc_association_authorization_vpc_association_authorization_args_doc}
class VpcAssociationAuthorizationArgs {
  /// The VPC to authorize for association with the private hosted zone.
  final pulumi.Input<String> vpcId;

  /// The VPC's region. Defaults to the region of the AWS provider.
  final pulumi.Input<String>? vpcRegion;

  /// The ID of the private hosted zone that you want to authorize associating a VPC with.
  final pulumi.Input<String> zoneId;

  /// Creates a new [VpcAssociationAuthorizationArgs].
  /// [vpcId] The VPC to authorize for association with the private hosted zone.
  /// [vpcRegion] The VPC's region. Defaults to the region of the AWS provider.
  /// [zoneId] The ID of the private hosted zone that you want to authorize associating a VPC with.
  VpcAssociationAuthorizationArgs({
    required String vpcId,
    String? vpcRegion,
    required String zoneId,
  }) : vpcId = pulumi.Input.asInput<String>(vpcId),
       vpcRegion = pulumi.Input.asOptionalInput<String>(vpcRegion),
       zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcId': vpcId,
      'vpcRegion': ?vpcRegion,
      'zoneId': zoneId,
    };
  }

  factory VpcAssociationAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return VpcAssociationAuthorizationArgs(
      vpcId: map['vpcId'] as String,
      vpcRegion: map['vpcRegion'] == null ? null : map['vpcRegion'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

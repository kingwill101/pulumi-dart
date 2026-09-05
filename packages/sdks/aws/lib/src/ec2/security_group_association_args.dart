// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_security_group_association_security_group_association_args_doc}
/// The set of arguments for SecurityGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_security_group_association_security_group_association_args_doc}
class SecurityGroupAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replaceDefaultAssociation = true`. `false` should be used when importing resources.
  final pulumi.Input<bool?>? replaceDefaultAssociation;
  /// The ID of the security group to be associated with the VPC endpoint.
  final pulumi.Input<String> securityGroupId;
  /// The ID of the VPC endpoint with which the security group will be associated.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [SecurityGroupAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceDefaultAssociation] Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replaceDefaultAssociation = true`. `false` should be used when importing resources.
  /// [securityGroupId] The ID of the security group to be associated with the VPC endpoint.
  /// [vpcEndpointId] The ID of the VPC endpoint with which the security group will be associated.
  const SecurityGroupAssociationArgs({
    this.region,
    this.replaceDefaultAssociation,
    required this.securityGroupId,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replaceDefaultAssociation': ?replaceDefaultAssociation,
      'securityGroupId': securityGroupId,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory SecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceDefaultAssociation: (() { final guardedValue = map['replaceDefaultAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}

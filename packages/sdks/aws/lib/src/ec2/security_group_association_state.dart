// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroupAssociation resources.
class SecurityGroupAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replace_default_association = true`. `false` should be used when importing resources.
  final pulumi.Input<bool>? replaceDefaultAssociation;
  /// The ID of the security group to be associated with the VPC endpoint.
  final pulumi.Input<String>? securityGroupId;
  /// The ID of the VPC endpoint with which the security group will be associated.
  final pulumi.Input<String>? vpcEndpointId;

  /// Creates a new [SecurityGroupAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceDefaultAssociation] Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with `replace_default_association = true`. `false` should be used when importing resources.
  /// [securityGroupId] The ID of the security group to be associated with the VPC endpoint.
  /// [vpcEndpointId] The ID of the VPC endpoint with which the security group will be associated.
  SecurityGroupAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<bool>? replaceDefaultAssociation,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? vpcEndpointId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replaceDefaultAssociation = pulumi.Input.asOptionalInput<bool>(replaceDefaultAssociation),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replaceDefaultAssociation': ?replaceDefaultAssociation,
      'securityGroupId': ?securityGroupId,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory SecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replaceDefaultAssociation: map['replaceDefaultAssociation'] == null ? null : pulumi.Output.create<bool>(map['replaceDefaultAssociation'] as bool),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityGroupAssociation.
class SecurityGroupAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with <span pulumi-lang-nodejs="`replaceDefaultAssociation " pulumi-lang-dotnet="`ReplaceDefaultAssociation " pulumi-lang-go="`replaceDefaultAssociation " pulumi-lang-python="`replace_default_association " pulumi-lang-yaml="`replaceDefaultAssociation " pulumi-lang-java="`replaceDefaultAssociation ">`replace_default_association </span>= true`. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> should be used when importing resources.
  final Input<bool>? replaceDefaultAssociation;

  /// The ID of the security group to be associated with the VPC endpoint.
  final Input<String> securityGroupId;

  /// The ID of the VPC endpoint with which the security group will be associated.
  final Input<String> vpcEndpointId;

  SecurityGroupAssociationArgs({
    this.region,
    this.replaceDefaultAssociation,
    required this.securityGroupId,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replaceDefaultAssociationValue = replaceDefaultAssociation;
    if (replaceDefaultAssociationValue != null) {
      map['replaceDefaultAssociation'] = replaceDefaultAssociationValue;
    }
    map['securityGroupId'] = securityGroupId;
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory SecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupAssociationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      replaceDefaultAssociation:
          Input.asOptionalInput<bool>(map['replaceDefaultAssociation']),
      securityGroupId: Input.asInput<String>(map['securityGroupId']),
      vpcEndpointId: Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}

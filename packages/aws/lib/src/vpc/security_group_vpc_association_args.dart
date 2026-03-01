// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_vpc_association_timeouts.dart';

/// {@template pulumi_vpc_security_group_vpc_association_security_group_vpc_association_args_doc}
/// The set of arguments for SecurityGroupVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpc_security_group_vpc_association_security_group_vpc_association_args_doc}
class SecurityGroupVpcAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  final pulumi.Input<SecurityGroupVpcAssociationTimeouts>? timeouts;

  /// The ID of the VPC to make the association with.
  final pulumi.Input<String> vpcId;

  /// Creates a new [SecurityGroupVpcAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC to make the association with.
  SecurityGroupVpcAssociationArgs({
    String? region,
    required String securityGroupId,
    SecurityGroupVpcAssociationTimeouts? timeouts,
    required String vpcId,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
       timeouts =
           pulumi.Input.asOptionalInput<SecurityGroupVpcAssociationTimeouts>(
             timeouts,
           ),
       vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityGroupId': securityGroupId,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityGroupVpcAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcId': vpcId,
    };
  }

  factory SecurityGroupVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupVpcAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : SecurityGroupVpcAssociationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      vpcId: map['vpcId'] as String,
    );
  }
}

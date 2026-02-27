// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_group_vpc_association_timeouts/security_group_vpc_association_timeouts.dart';

/// The set of arguments for SecurityGroupVpcAssociation.
class SecurityGroupVpcAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  final pulumi.Input<SecurityGroupVpcAssociationTimeouts>? timeouts;

  /// The ID of the VPC to make the association with.
  final pulumi.Input<String> vpcId;

  SecurityGroupVpcAssociationArgs({
    this.region,
    required this.securityGroupId,
    this.timeouts,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          SecurityGroupVpcAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory SecurityGroupVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupVpcAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupId: pulumi.Input.asInput<String>(map['securityGroupId']),
      timeouts:
          pulumi.Input.asOptionalInput<SecurityGroupVpcAssociationTimeouts>(
              map['timeouts']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}

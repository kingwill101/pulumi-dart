// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_vpc_association_timeouts.dart';

/// Input properties used for looking up and filtering SecurityGroupVpcAssociation resources.
class SecurityGroupVpcAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// State of the VPC association. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroupVpcAssociation.html) for possible values.
  final pulumi.Input<String>? state;
  final pulumi.Input<SecurityGroupVpcAssociationTimeouts>? timeouts;
  /// The ID of the VPC to make the association with.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SecurityGroupVpcAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  /// [state] State of the VPC association. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SecurityGroupVpcAssociation.html) for possible values.
  /// [timeouts] Optional.
  /// [vpcId] The ID of the VPC to make the association with.
  SecurityGroupVpcAssociationState({
    this.region,
    this.securityGroupId,
    this.state,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'state': ?state,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SecurityGroupVpcAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory SecurityGroupVpcAssociationState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupVpcAssociationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (SecurityGroupVpcAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}


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
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? state,
    pulumi.Output<SecurityGroupVpcAssociationTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      state = pulumi.Input.asOptionalInput<String>(state),
      timeouts = pulumi.Input.asOptionalInput<SecurityGroupVpcAssociationTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SecurityGroupVpcAssociationTimeouts>(SecurityGroupVpcAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


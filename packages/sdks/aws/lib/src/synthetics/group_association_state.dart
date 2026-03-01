// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupAssociation resources.
class GroupAssociationState {
  /// ARN of the canary.
  final pulumi.Input<String>? canaryArn;
  final pulumi.Input<String>? groupArn;
  /// ID of the Group.
  final pulumi.Input<String>? groupId;
  /// Name of the group that the canary will be associated with.
  final pulumi.Input<String>? groupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GroupAssociationState].
  /// [canaryArn] ARN of the canary.
  /// [groupArn] Optional.
  /// [groupId] ID of the Group.
  /// [groupName] Name of the group that the canary will be associated with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GroupAssociationState({
    pulumi.Output<String>? canaryArn,
    pulumi.Output<String>? groupArn,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? region,
  }) :
      canaryArn = pulumi.Input.asOptionalInput<String>(canaryArn),
      groupArn = pulumi.Input.asOptionalInput<String>(groupArn),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryArn': ?canaryArn,
      'groupArn': ?groupArn,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'region': ?region,
    };
  }

  factory GroupAssociationState.fromMap(Map<String, dynamic> map) {
    return GroupAssociationState(
      canaryArn: map['canaryArn'] == null ? null : pulumi.Output.create<String>(map['canaryArn'] as String),
      groupArn: map['groupArn'] == null ? null : pulumi.Output.create<String>(map['groupArn'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


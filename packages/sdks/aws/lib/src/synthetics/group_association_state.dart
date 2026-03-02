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
    this.canaryArn,
    this.groupArn,
    this.groupId,
    this.groupName,
    this.region,
  });

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
      canaryArn: map['canaryArn'] == null ? null : ((map['canaryArn'] as String).input()).input(),
      groupArn: map['groupArn'] == null ? null : ((map['groupArn'] as String).input()).input(),
      groupId: map['groupId'] == null ? null : ((map['groupId'] as String).input()).input(),
      groupName: map['groupName'] == null ? null : ((map['groupName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroupAssociation resources.
class UserGroupAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the user group.
  final pulumi.Input<String>? userGroupId;
  /// ID of the user to associated with the user group.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserGroupAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userGroupId] ID of the user group.
  /// [userId] ID of the user to associated with the user group.
  UserGroupAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? userGroupId,
    pulumi.Output<String>? userId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'userGroupId': ?userGroupId,
      'userId': ?userId,
    };
  }

  factory UserGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return UserGroupAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}


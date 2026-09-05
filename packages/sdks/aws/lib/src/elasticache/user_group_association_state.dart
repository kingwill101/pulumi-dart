// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroupAssociation resources.
class UserGroupAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the user group.
  final pulumi.Input<String?>? userGroupId;
  /// ID of the user to associated with the user group.
  final pulumi.Input<String?>? userId;

  /// Creates a new [UserGroupAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userGroupId] ID of the user group.
  /// [userId] ID of the user to associated with the user group.
  const UserGroupAssociationState({
    this.region,
    this.userGroupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'userGroupId': ?userGroupId,
      'userId': ?userId,
    };
  }

  factory UserGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return UserGroupAssociationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserGroupAssociation.
class UserGroupAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the user group.
  final Input<String> userGroupId;

  /// ID of the user to associated with the user group.
  final Input<String> userId;

  UserGroupAssociationArgs({
    this.region,
    required this.userGroupId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userGroupId'] = userGroupId;
    map['userId'] = userId;
    return map;
  }

  factory UserGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupAssociationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      userGroupId: Input.asInput<String>(map['userGroupId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserInGroup.
class UserInGroupArgs {
  /// The name of the group to which the user is to be added.
  final pulumi.Input<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The user pool ID of the user and group.
  final pulumi.Input<String> userPoolId;

  /// The username of the user to be added to the group.
  final pulumi.Input<String> username;

  UserInGroupArgs({
    required this.groupName,
    this.region,
    required this.userPoolId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    map['username'] = username;
    return map;
  }

  factory UserInGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserInGroupArgs(
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}

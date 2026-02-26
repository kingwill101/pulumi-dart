// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_user/get_group_user.dart';

/// Result data returned by getGroup.
class GetGroupResult2 {
  /// User ARN.
  final String arn;

  /// Stable and unique string identifying the group.
  final String groupId;
  final String groupName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Path to the IAM user.
  final String path;

  /// List of objects containing group member information. See below.
  final List<GetGroupUser> users;

  GetGroupResult2({
    required this.arn,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.path,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['groupId'] = groupId;
    map['groupName'] = groupName;
    map['id'] = id;
    map['path'] = path;
    map['users'] = Input.encodeList<GetGroupUser, Map<String, dynamic>>(
        users, (value) => value.toMap());
    return map;
  }

  factory GetGroupResult2.fromMap(Map<String, dynamic> map) {
    return GetGroupResult2(
      arn: map['arn'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      path: map['path'] as String,
      users: Input.decodeList<GetGroupUser>(
          map['users'],
          (value) =>
              GetGroupUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

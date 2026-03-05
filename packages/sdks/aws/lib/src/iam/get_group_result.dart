// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_user.dart';

/// Result data returned by getGroup.
class GetGroupResult {
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

  /// Creates a new [GetGroupResult].
  /// [arn] User ARN.
  /// [groupId] Stable and unique string identifying the group.
  /// [groupName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [path] Path to the IAM user.
  /// [users] List of objects containing group member information. See below.
  GetGroupResult({
    required this.arn,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.path,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'path': path,
      'users': pulumi.Input.encodeList<GetGroupUser, Map<String, dynamic>>(
        users,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      arn: map['arn'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      path: map['path'] as String,
      users: pulumi.Input.decodeList<GetGroupUser>(
        map['users']!,
        (value) => GetGroupUser.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

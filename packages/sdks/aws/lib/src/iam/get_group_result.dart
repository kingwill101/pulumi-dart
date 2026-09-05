// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_user.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// User ARN.
  final String? arn;
  /// Stable and unique string identifying the group.
  final String? groupId;
  final String? groupName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Path to the IAM user.
  final String? path;
  /// List of objects containing group member information. See below.
  final List<GetGroupUser>? users;

  /// Creates a new [GetGroupResult].
  /// [arn] User ARN.
  /// [groupId] Stable and unique string identifying the group.
  /// [groupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [path] Path to the IAM user.
  /// [users] List of objects containing group member information. See below.
  const GetGroupResult({
    this.arn,
    this.groupId,
    this.groupName,
    this.id,
    this.path,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'id': ?id,
      'path': ?path,
      'users': ?(() { final guardedValue = users; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupUser>(guardedValue, (value) => GetGroupUser.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

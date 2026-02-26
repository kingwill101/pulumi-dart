// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_groups_group/get_user_groups_group.dart';

/// Result data returned by getUserGroups.
class GetUserGroupsResult {
  /// List of groups. See <span pulumi-lang-nodejs="`groups`" pulumi-lang-dotnet="`Groups`" pulumi-lang-go="`groups`" pulumi-lang-python="`groups`" pulumi-lang-yaml="`groups`" pulumi-lang-java="`groups`">`groups`</span> below.
  final List<GetUserGroupsGroup> groups;

  /// User pool identifier.
  final String id;
  final String region;
  final String userPoolId;

  GetUserGroupsResult({
    required this.groups,
    required this.id,
    required this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groups'] = Input.encodeList<GetUserGroupsGroup, Map<String, dynamic>>(
        groups, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetUserGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResult(
      groups: Input.decodeList<GetUserGroupsGroup>(
          map['groups'],
          (value) => GetUserGroupsGroup.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}

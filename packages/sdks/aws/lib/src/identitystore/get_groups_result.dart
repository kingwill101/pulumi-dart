// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// List of Identity Store Groups
  final List<GetGroupsGroup> groups;
  final String identityStoreId;
  final String region;

  /// Creates a new [GetGroupsResult].
  /// [groups] List of Identity Store Groups
  /// [identityStoreId] Required.
  /// [region] Required.
  const GetGroupsResult({
    required this.groups,
    required this.identityStoreId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'identityStoreId': identityStoreId,
      'region': region,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: pulumi.Input.decodeList<GetGroupsGroup>(map['groups']!, (value) => GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_groups_group/get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// List of Identity Store Groups
  final List<GetGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identityStoreId;
  final String region;

  GetGroupsResult({
    required this.groups,
    required this.id,
    required this.identityStoreId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groups'] =
        pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(
            groups, (value) => value.toMap());
    map['id'] = id;
    map['identityStoreId'] = identityStoreId;
    map['region'] = region;
    return map;
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: pulumi.Input.decodeList<GetGroupsGroup>(
          map['groups'],
          (value) =>
              GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
    );
  }
}

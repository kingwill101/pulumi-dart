// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_groups_group/get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  /// The list of groups under the provided customer or namespace. Structure is documented below.
  final List<GetGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parent;

  GetGroupsResult({
    required this.groups,
    required this.id,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groups'] =
        pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(
            groups, (value) => value.toMap());
    map['id'] = id;
    map['parent'] = parent;
    return map;
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groups: pulumi.Input.decodeList<GetGroupsGroup>(
          map['groups'],
          (value) =>
              GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parent: map['parent'] as String,
    );
  }
}

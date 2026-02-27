// ignore_for_file: unused_element, unnecessary_cast

import '../get_group_lookup_group_key/get_group_lookup_group_key.dart';

/// Result data returned by getGroupLookup.
class GetGroupLookupResult {
  final GetGroupLookupGroupKey groupKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Resource name of the Group in the format: groups/{group_id}, where `group_id` is the unique ID assigned to the Group.
  final String name;

  GetGroupLookupResult({
    required this.groupKey,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupKey'] = groupKey.toMap();
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetGroupLookupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupLookupResult(
      groupKey: GetGroupLookupGroupKey.fromMap(
          (map['groupKey'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetUserHierarchyGroupHierarchyPathLevelFife {
  /// ARN of the hierarchy group.
  final String arn;

  /// The identifier of the hierarchy group.
  final String id;

  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final String name;

  GetUserHierarchyGroupHierarchyPathLevelFife({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetUserHierarchyGroupHierarchyPathLevelFife.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelFife(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

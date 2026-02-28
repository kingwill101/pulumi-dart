// ignore_for_file: unused_element, unnecessary_cast

class GetUserHierarchyGroupHierarchyPathLevelFour {
  /// ARN of the hierarchy group.
  final String arn;

  /// The identifier of the hierarchy group.
  final String id;

  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final String name;

  /// Creates a new [GetUserHierarchyGroupHierarchyPathLevelFour].
  /// [arn] ARN of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] Returns information on a specific hierarchy group by name
  GetUserHierarchyGroupHierarchyPathLevelFour({
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

  factory GetUserHierarchyGroupHierarchyPathLevelFour.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelFour(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

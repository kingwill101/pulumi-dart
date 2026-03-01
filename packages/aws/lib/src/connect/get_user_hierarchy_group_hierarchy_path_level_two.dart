// ignore_for_file: unused_element, unnecessary_cast


class GetUserHierarchyGroupHierarchyPathLevelTwo {
  /// ARN of the hierarchy group.
  final String arn;
  /// The identifier of the hierarchy group.
  final String id;
  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final String name;

  /// Creates a new [GetUserHierarchyGroupHierarchyPathLevelTwo].
  /// [arn] ARN of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] Returns information on a specific hierarchy group by name
  GetUserHierarchyGroupHierarchyPathLevelTwo({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
    };
  }

  factory GetUserHierarchyGroupHierarchyPathLevelTwo.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelTwo(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}


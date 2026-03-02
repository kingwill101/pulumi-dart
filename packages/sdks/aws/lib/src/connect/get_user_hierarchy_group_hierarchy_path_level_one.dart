// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserHierarchyGroupHierarchyPathLevelOne {
  /// ARN of the hierarchy group.
  final pulumi.Input<String> arn;
  /// The identifier of the hierarchy group.
  final pulumi.Input<String> id;
  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final pulumi.Input<String> name;

  /// Creates a new [GetUserHierarchyGroupHierarchyPathLevelOne].
  /// [arn] ARN of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] Returns information on a specific hierarchy group by name
  GetUserHierarchyGroupHierarchyPathLevelOne({
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

  factory GetUserHierarchyGroupHierarchyPathLevelOne.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelOne(
      arn: (map['arn'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserHierarchyGroupHierarchyPathLevelFour {
  /// ARN of the hierarchy group.
  final pulumi.Input<String> arn;
  /// The identifier of the hierarchy group.
  final pulumi.Input<String> id;
  /// Returns information on a specific hierarchy group by name
  ///
  /// &gt; **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final pulumi.Input<String> name;

  /// Creates a new [GetUserHierarchyGroupHierarchyPathLevelFour].
  /// [arn] ARN of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] Returns information on a specific hierarchy group by name
  const GetUserHierarchyGroupHierarchyPathLevelFour({
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

  factory GetUserHierarchyGroupHierarchyPathLevelFour.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelFour(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


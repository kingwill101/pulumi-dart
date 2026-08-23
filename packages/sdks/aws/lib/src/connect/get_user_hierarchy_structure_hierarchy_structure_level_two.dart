// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserHierarchyStructureHierarchyStructureLevelTwo {
  /// ARN of the hierarchy level.
  final pulumi.Input<String> arn;
  /// The identifier of the hierarchy level.
  final pulumi.Input<String> id;
  /// Name of the user hierarchy level. Must not be more than 50 characters.
  final pulumi.Input<String> name;

  /// Creates a new [GetUserHierarchyStructureHierarchyStructureLevelTwo].
  /// [arn] ARN of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] Name of the user hierarchy level. Must not be more than 50 characters.
  const GetUserHierarchyStructureHierarchyStructureLevelTwo({
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

  factory GetUserHierarchyStructureHierarchyStructureLevelTwo.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureHierarchyStructureLevelTwo(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

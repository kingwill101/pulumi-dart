// ignore_for_file: unused_element, unnecessary_cast


class GetUserHierarchyStructureHierarchyStructureLevelThree {
  /// ARN of the hierarchy level.
  final String arn;
  /// The identifier of the hierarchy level.
  final String id;
  /// Name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  /// Creates a new [GetUserHierarchyStructureHierarchyStructureLevelThree].
  /// [arn] ARN of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] Name of the user hierarchy level. Must not be more than 50 characters.
  GetUserHierarchyStructureHierarchyStructureLevelThree({
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

  factory GetUserHierarchyStructureHierarchyStructureLevelThree.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureHierarchyStructureLevelThree(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}


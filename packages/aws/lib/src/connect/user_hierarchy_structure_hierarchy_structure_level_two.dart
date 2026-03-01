// ignore_for_file: unused_element, unnecessary_cast

class UserHierarchyStructureHierarchyStructureLevelTwo {
  /// The Amazon Resource Name (ARN) of the hierarchy level.
  final String? arn;

  /// The identifier of the hierarchy level.
  final String? id;

  /// The name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  /// Creates a new [UserHierarchyStructureHierarchyStructureLevelTwo].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] The name of the user hierarchy level. Must not be more than 50 characters.
  UserHierarchyStructureHierarchyStructureLevelTwo({
    this.arn,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'id': ?id, 'name': name};
  }

  factory UserHierarchyStructureHierarchyStructureLevelTwo.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserHierarchyStructureHierarchyStructureLevelTwo(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}

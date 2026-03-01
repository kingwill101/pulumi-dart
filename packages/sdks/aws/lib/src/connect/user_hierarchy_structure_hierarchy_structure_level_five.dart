// ignore_for_file: unused_element, unnecessary_cast


class UserHierarchyStructureHierarchyStructureLevelFive {
  /// The Amazon Resource Name (ARN) of the hierarchy level.
  final String? arn;
  /// The identifier of the hierarchy level.
  final String? id;
  /// The name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  /// Creates a new [UserHierarchyStructureHierarchyStructureLevelFive].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] The name of the user hierarchy level. Must not be more than 50 characters.
  UserHierarchyStructureHierarchyStructureLevelFive({
    this.arn,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': name,
    };
  }

  factory UserHierarchyStructureHierarchyStructureLevelFive.fromMap(Map<String, dynamic> map) {
    return UserHierarchyStructureHierarchyStructureLevelFive(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}


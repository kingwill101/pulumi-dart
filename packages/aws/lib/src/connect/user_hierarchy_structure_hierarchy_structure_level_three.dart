// ignore_for_file: unused_element, unnecessary_cast

class UserHierarchyStructureHierarchyStructureLevelThree {
  /// The Amazon Resource Name (ARN) of the hierarchy level.
  final String? arn;

  /// The identifier of the hierarchy level.
  final String? id;

  /// The name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  /// Creates a new [UserHierarchyStructureHierarchyStructureLevelThree].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] The name of the user hierarchy level. Must not be more than 50 characters.
  UserHierarchyStructureHierarchyStructureLevelThree({
    this.arn,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['name'] = name;
    return map;
  }

  factory UserHierarchyStructureHierarchyStructureLevelThree.fromMap(
      Map<String, dynamic> map) {
    return UserHierarchyStructureHierarchyStructureLevelThree(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetUserHierarchyStructureHierarchyStructureLevelOne {
  /// ARN of the hierarchy level.
  final String arn;

  /// The identifier of the hierarchy level.
  final String id;

  /// Name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  /// Creates a new [GetUserHierarchyStructureHierarchyStructureLevelOne].
  /// [arn] ARN of the hierarchy level.
  /// [id] The identifier of the hierarchy level.
  /// [name] Name of the user hierarchy level. Must not be more than 50 characters.
  GetUserHierarchyStructureHierarchyStructureLevelOne({
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

  factory GetUserHierarchyStructureHierarchyStructureLevelOne.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyStructureHierarchyStructureLevelOne(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

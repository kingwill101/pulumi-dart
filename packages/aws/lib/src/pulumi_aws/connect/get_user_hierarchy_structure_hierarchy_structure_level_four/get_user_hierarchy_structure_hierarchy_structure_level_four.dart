// ignore_for_file: unused_element, unnecessary_cast

class GetUserHierarchyStructureHierarchyStructureLevelFour {
  /// ARN of the hierarchy level.
  final String arn;

  /// The identifier of the hierarchy level.
  final String id;

  /// Name of the user hierarchy level. Must not be more than 50 characters.
  final String name;

  GetUserHierarchyStructureHierarchyStructureLevelFour({
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

  factory GetUserHierarchyStructureHierarchyStructureLevelFour.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyStructureHierarchyStructureLevelFour(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

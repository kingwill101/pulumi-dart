// ignore_for_file: unused_element, unnecessary_cast

class UserHierarchyGroupHierarchyPathLevelOne {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final String? arn;

  /// The identifier of the hierarchy group.
  final String? id;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final String? name;

  /// Creates a new [UserHierarchyGroupHierarchyPathLevelOne].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  UserHierarchyGroupHierarchyPathLevelOne({
    this.arn,
    this.id,
    this.name,
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory UserHierarchyGroupHierarchyPathLevelOne.fromMap(
      Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPathLevelOne(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

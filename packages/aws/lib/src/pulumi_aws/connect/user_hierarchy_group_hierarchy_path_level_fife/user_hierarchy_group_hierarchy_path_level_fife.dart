// ignore_for_file: unused_element, unnecessary_cast

class UserHierarchyGroupHierarchyPathLevelFife {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final String? arn;

  /// The identifier of the hierarchy group.
  final String? id;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final String? name;

  UserHierarchyGroupHierarchyPathLevelFife({
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

  factory UserHierarchyGroupHierarchyPathLevelFife.fromMap(
      Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPathLevelFife(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

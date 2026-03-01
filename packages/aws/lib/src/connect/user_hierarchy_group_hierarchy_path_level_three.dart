// ignore_for_file: unused_element, unnecessary_cast

class UserHierarchyGroupHierarchyPathLevelThree {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final String? arn;

  /// The identifier of the hierarchy group.
  final String? id;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final String? name;

  /// Creates a new [UserHierarchyGroupHierarchyPathLevelThree].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  UserHierarchyGroupHierarchyPathLevelThree({this.arn, this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'id': ?id, 'name': ?name};
  }

  factory UserHierarchyGroupHierarchyPathLevelThree.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserHierarchyGroupHierarchyPathLevelThree(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

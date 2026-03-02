// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserHierarchyGroupHierarchyPathLevelTwo {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final pulumi.Input<String>? arn;
  /// The identifier of the hierarchy group.
  final pulumi.Input<String>? id;
  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final pulumi.Input<String>? name;

  /// Creates a new [UserHierarchyGroupHierarchyPathLevelTwo].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  UserHierarchyGroupHierarchyPathLevelTwo({
    this.arn,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
    };
  }

  factory UserHierarchyGroupHierarchyPathLevelTwo.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPathLevelTwo(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


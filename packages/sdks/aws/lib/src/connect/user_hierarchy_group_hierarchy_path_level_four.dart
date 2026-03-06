// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserHierarchyGroupHierarchyPathLevelFour {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final pulumi.Input<String>? arn;
  /// The identifier of the hierarchy group.
  final pulumi.Input<String>? id;
  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final pulumi.Input<String>? name;

  /// Creates a new [UserHierarchyGroupHierarchyPathLevelFour].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [id] The identifier of the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  const UserHierarchyGroupHierarchyPathLevelFour({
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

  factory UserHierarchyGroupHierarchyPathLevelFour.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupHierarchyPathLevelFour(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


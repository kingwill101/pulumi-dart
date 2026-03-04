// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserHierarchyStructureHierarchyStructureLevelThree {
  /// The Amazon Resource Name (ARN) of the hierarchy level.
  final pulumi.Input<String>? arn;

  /// The identifier of the hierarchy level.
  final pulumi.Input<String>? id;

  /// The name of the user hierarchy level. Must not be more than 50 characters.
  final pulumi.Input<String> name;

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
    return <String, dynamic>{'arn': ?arn, 'id': ?id, 'name': name};
  }

  factory UserHierarchyStructureHierarchyStructureLevelThree.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserHierarchyStructureHierarchyStructureLevelThree(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

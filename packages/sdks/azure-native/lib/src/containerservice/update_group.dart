// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A group to be updated.
class UpdateGroup {
  /// Name of the group.
  /// It must match a group name of an existing fleet member.
  final pulumi.Input<String> name;

  /// Creates a new [UpdateGroup].
  /// [name] Name of the group.
  UpdateGroup({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory UpdateGroup.fromMap(Map<String, dynamic> map) {
    return UpdateGroup(name: pulumi.Input.fromValue(map['name'] as String));
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Group.
class GroupArgs2 {
  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  final Input<String>? name;

  /// Path in which to create the group.
  final Input<String>? path;

  GroupArgs2({
    this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory GroupArgs2.fromMap(Map<String, dynamic> map) {
    return GroupArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      path: Input.asOptionalInput<String>(map['path']),
    );
  }
}

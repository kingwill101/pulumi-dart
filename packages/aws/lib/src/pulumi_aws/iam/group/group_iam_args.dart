// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupIamArgs {
  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  final pulumi.Input<String>? name;

  /// Path in which to create the group.
  final pulumi.Input<String>? path;

  GroupIamArgs({
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

  factory GroupIamArgs.fromMap(Map<String, dynamic> map) {
    return GroupIamArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      path: pulumi.Input.asOptionalInput<String>(map['path']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_iam_group_group_args_doc}
class GroupArgs {
  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  final pulumi.Input<String>? name;

  /// Path in which to create the group.
  final pulumi.Input<String>? path;

  /// Creates a new [GroupArgs].
  /// [name] The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  /// [path] Path in which to create the group.
  GroupArgs({
    String? name,
    String? path,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        path = pulumi.Input.asOptionalInput<String>(path);

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

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

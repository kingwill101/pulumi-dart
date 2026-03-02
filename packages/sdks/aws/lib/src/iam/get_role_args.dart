// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_role_get_role_args_doc}
/// Arguments for getRole.
/// {@endtemplate}
/// {@macro pulumi_iam_get_role_get_role_args_doc}
class GetRoleArgs {
  /// Friendly IAM role name to match.
  final pulumi.Input<String> name;
  /// Tags attached to the role.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetRoleArgs].
  /// [name] Friendly IAM role name to match.
  /// [tags] Tags attached to the role.
  GetRoleArgs({
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      name: (map['name'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}


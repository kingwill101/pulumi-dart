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
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


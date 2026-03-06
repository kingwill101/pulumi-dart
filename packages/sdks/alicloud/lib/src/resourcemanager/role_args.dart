// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_role_role_args_doc}
class RoleArgs {
  /// The content of the permissions strategy that plays a role.
  final pulumi.Input<String> assumeRolePolicyDocument;
  /// The description of the Resource Manager role.
  final pulumi.Input<String>? description;
  /// Role maximum session time. Valid values: [3600-43200]. Default to `3600`.
  final pulumi.Input<int>? maxSessionDuration;
  /// Role Name. The length is 1 ~ 64 characters, which can include English letters, numbers, dots "." and dashes "-".
  final pulumi.Input<String> roleName;

  /// Creates a new [RoleArgs].
  /// [assumeRolePolicyDocument] The content of the permissions strategy that plays a role.
  /// [description] The description of the Resource Manager role.
  /// [maxSessionDuration] Role maximum session time. Valid values: [3600-43200]. Default to `3600`.
  /// [roleName] Role Name. The length is 1 ~ 64 characters, which can include English letters, numbers, dots "." and dashes "-".
  const RoleArgs({
    required this.assumeRolePolicyDocument,
    this.description,
    this.maxSessionDuration,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRolePolicyDocument': assumeRolePolicyDocument,
      'description': ?description,
      'maxSessionDuration': ?maxSessionDuration,
      'roleName': roleName,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRolePolicyDocument: pulumi.Input.fromValue(map['assumeRolePolicyDocument'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSessionDuration: (() { final guardedValue = map['maxSessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}


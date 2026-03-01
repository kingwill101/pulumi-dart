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
  RoleArgs({
    required pulumi.Output<String> assumeRolePolicyDocument,
    pulumi.Output<String>? description,
    pulumi.Output<int>? maxSessionDuration,
    required pulumi.Output<String> roleName,
  }) :
      assumeRolePolicyDocument = pulumi.Input.asInput<String>(assumeRolePolicyDocument),
      description = pulumi.Input.asOptionalInput<String>(description),
      maxSessionDuration = pulumi.Input.asOptionalInput<int>(maxSessionDuration),
      roleName = pulumi.Input.asInput<String>(roleName);

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
      assumeRolePolicyDocument: pulumi.Output.create<String>(map['assumeRolePolicyDocument'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : pulumi.Output.create<int>(map['maxSessionDuration'] as int),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}


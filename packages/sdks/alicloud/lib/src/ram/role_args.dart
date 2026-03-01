// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_ram_role_role_args_doc}
class RoleArgs {
  /// The trust policy that specifies one or more trusted entities to assume the RAM role. The trusted entities can be Alibaba Cloud accounts, Alibaba Cloud services, or identity providers (IdPs).
  final pulumi.Input<String>? assumeRolePolicyDocument;
  /// The description of the RAM role.
  final pulumi.Input<String>? description;
  /// Field `document` has been deprecated from provider version 1.252.0. New field `assume_role_policy_document` instead.
  final pulumi.Input<String>? document;
  /// Specifies whether to force delete the Role. Default value: `false`. Valid values:
  final pulumi.Input<bool>? force;
  /// The maximum session time of the RAM role. Default value: `3600`. Valid values: `3600` to `43200`.
  final pulumi.Input<int>? maxSessionDuration;
  /// Field `name` has been deprecated from provider version 1.252.0. New field `role_name` instead.
  final pulumi.Input<String>? name;
  /// Field `ram_users` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<List<String>>? ramUsers;
  /// The name of the RAM role.
  final pulumi.Input<String>? roleName;
  /// Field `services` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<List<String>>? services;
  /// The list of tags for the role.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<String>? version;

  /// Creates a new [RoleArgs].
  /// [assumeRolePolicyDocument] The trust policy that specifies one or more trusted entities to assume the RAM role. The trusted entities can be Alibaba Cloud accounts, Alibaba Cloud services, or identity providers (IdPs).
  /// [description] The description of the RAM role.
  /// [document] Field `document` has been deprecated from provider version 1.252.0. New field `assume_role_policy_document` instead.
  /// [force] Specifies whether to force delete the Role. Default value: `false`. Valid values:
  /// [maxSessionDuration] The maximum session time of the RAM role. Default value: `3600`. Valid values: `3600` to `43200`.
  /// [name] Field `name` has been deprecated from provider version 1.252.0. New field `role_name` instead.
  /// [ramUsers] Field `ram_users` has been deprecated from provider version 1.49.0. New field `document` instead.
  /// [roleName] The name of the RAM role.
  /// [services] Field `services` has been deprecated from provider version 1.49.0. New field `document` instead.
  /// [tags] The list of tags for the role.
  /// [version] Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  RoleArgs({
    pulumi.Output<String>? assumeRolePolicyDocument,
    pulumi.Output<String>? description,
    pulumi.Output<String>? document,
    pulumi.Output<bool>? force,
    pulumi.Output<int>? maxSessionDuration,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? ramUsers,
    pulumi.Output<String>? roleName,
    pulumi.Output<List<String>>? services,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      assumeRolePolicyDocument = pulumi.Input.asOptionalInput<String>(assumeRolePolicyDocument),
      description = pulumi.Input.asOptionalInput<String>(description),
      document = pulumi.Input.asOptionalInput<String>(document),
      force = pulumi.Input.asOptionalInput<bool>(force),
      maxSessionDuration = pulumi.Input.asOptionalInput<int>(maxSessionDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      ramUsers = pulumi.Input.asOptionalInput<List<String>>(ramUsers),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      services = pulumi.Input.asOptionalInput<List<String>>(services),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRolePolicyDocument': ?assumeRolePolicyDocument,
      'description': ?description,
      'document': ?document,
      'force': ?force,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'ramUsers': ?ramUsers,
      'roleName': ?roleName,
      'services': ?services,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] == null ? null : pulumi.Output.create<String>(map['assumeRolePolicyDocument'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      document: map['document'] == null ? null : pulumi.Output.create<String>(map['document'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : pulumi.Output.create<int>(map['maxSessionDuration'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ramUsers: map['ramUsers'] == null ? null : pulumi.Output.create<List<String>>((map['ramUsers'] as List).cast<String>()),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      services: map['services'] == null ? null : pulumi.Output.create<List<String>>((map['services'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}


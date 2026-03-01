// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  final pulumi.Input<String>? arn;
  /// The trust policy that specifies one or more trusted entities to assume the RAM role. The trusted entities can be Alibaba Cloud accounts, Alibaba Cloud services, or identity providers (IdPs).
  final pulumi.Input<String>? assumeRolePolicyDocument;
  /// (Available since v1.252.0) The time when the RAM role was created.
  final pulumi.Input<String>? createTime;
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
  /// The ID of the RAM role.
  final pulumi.Input<String>? roleId;
  /// The name of the RAM role.
  final pulumi.Input<String>? roleName;
  /// Field `services` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<List<String>>? services;
  /// The list of tags for the role.
  final pulumi.Input<Map<String, String>>? tags;
  /// Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<String>? version;

  /// Creates a new [RoleState].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the RAM role.
  /// [assumeRolePolicyDocument] The trust policy that specifies one or more trusted entities to assume the RAM role. The trusted entities can be Alibaba Cloud accounts, Alibaba Cloud services, or identity providers (IdPs).
  /// [createTime] (Available since v1.252.0) The time when the RAM role was created.
  /// [description] The description of the RAM role.
  /// [document] Field `document` has been deprecated from provider version 1.252.0. New field `assume_role_policy_document` instead.
  /// [force] Specifies whether to force delete the Role. Default value: `false`. Valid values:
  /// [maxSessionDuration] The maximum session time of the RAM role. Default value: `3600`. Valid values: `3600` to `43200`.
  /// [name] Field `name` has been deprecated from provider version 1.252.0. New field `role_name` instead.
  /// [ramUsers] Field `ram_users` has been deprecated from provider version 1.49.0. New field `document` instead.
  /// [roleId] The ID of the RAM role.
  /// [roleName] The name of the RAM role.
  /// [services] Field `services` has been deprecated from provider version 1.49.0. New field `document` instead.
  /// [tags] The list of tags for the role.
  /// [version] Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  RoleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? assumeRolePolicyDocument,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? document,
    pulumi.Output<bool>? force,
    pulumi.Output<int>? maxSessionDuration,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? ramUsers,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? roleName,
    pulumi.Output<List<String>>? services,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assumeRolePolicyDocument = pulumi.Input.asOptionalInput<String>(assumeRolePolicyDocument),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      document = pulumi.Input.asOptionalInput<String>(document),
      force = pulumi.Input.asOptionalInput<bool>(force),
      maxSessionDuration = pulumi.Input.asOptionalInput<int>(maxSessionDuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      ramUsers = pulumi.Input.asOptionalInput<List<String>>(ramUsers),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      services = pulumi.Input.asOptionalInput<List<String>>(services),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assumeRolePolicyDocument': ?assumeRolePolicyDocument,
      'createTime': ?createTime,
      'description': ?description,
      'document': ?document,
      'force': ?force,
      'maxSessionDuration': ?maxSessionDuration,
      'name': ?name,
      'ramUsers': ?ramUsers,
      'roleId': ?roleId,
      'roleName': ?roleName,
      'services': ?services,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] == null ? null : pulumi.Output.create<String>(map['assumeRolePolicyDocument'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      document: map['document'] == null ? null : pulumi.Output.create<String>(map['document'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : pulumi.Output.create<int>(map['maxSessionDuration'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ramUsers: map['ramUsers'] == null ? null : pulumi.Output.create<List<String>>((map['ramUsers'] as List).cast<String>()),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      services: map['services'] == null ? null : pulumi.Output.create<List<String>>((map['services'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}


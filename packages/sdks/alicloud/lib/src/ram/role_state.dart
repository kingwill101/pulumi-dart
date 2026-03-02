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
    this.arn,
    this.assumeRolePolicyDocument,
    this.createTime,
    this.description,
    this.document,
    this.force,
    this.maxSessionDuration,
    this.name,
    this.ramUsers,
    this.roleId,
    this.roleName,
    this.services,
    this.tags,
    this.version,
  });

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
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] == null ? null : (map['assumeRolePolicyDocument']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      document: map['document'] == null ? null : (map['document']! as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : (map['maxSessionDuration']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ramUsers: map['ramUsers'] == null ? null : ((map['ramUsers']! as List).cast<String>()).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName']! as String).input(),
      services: map['services'] == null ? null : ((map['services']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}


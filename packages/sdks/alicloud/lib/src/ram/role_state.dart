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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assumeRolePolicyDocument: (() {
        final guardedValue = map['assumeRolePolicyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      document: (() {
        final guardedValue = map['document'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxSessionDuration: (() {
        final guardedValue = map['maxSessionDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ramUsers: (() {
        final guardedValue = map['ramUsers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      roleId: (() {
        final guardedValue = map['roleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

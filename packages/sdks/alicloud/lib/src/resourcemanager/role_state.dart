// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Role resources.
class RoleState {
  /// The resource descriptor of the role.
  final pulumi.Input<String>? arn;
  /// The content of the permissions strategy that plays a role.
  final pulumi.Input<String>? assumeRolePolicyDocument;
  /// The description of the Resource Manager role.
  final pulumi.Input<String>? description;
  /// Role maximum session time. Valid values: [3600-43200]. Default to `3600`.
  final pulumi.Input<int>? maxSessionDuration;
  /// This ID of Resource Manager role. The value is set to `role_name`.
  final pulumi.Input<String>? roleId;
  /// Role Name. The length is 1 ~ 64 characters, which can include English letters, numbers, dots "." and dashes "-".
  final pulumi.Input<String>? roleName;
  /// Role update time.
  final pulumi.Input<String>? updateDate;

  /// Creates a new [RoleState].
  /// [arn] The resource descriptor of the role.
  /// [assumeRolePolicyDocument] The content of the permissions strategy that plays a role.
  /// [description] The description of the Resource Manager role.
  /// [maxSessionDuration] Role maximum session time. Valid values: [3600-43200]. Default to `3600`.
  /// [roleId] This ID of Resource Manager role. The value is set to `role_name`.
  /// [roleName] Role Name. The length is 1 ~ 64 characters, which can include English letters, numbers, dots "." and dashes "-".
  /// [updateDate] Role update time.
  RoleState({
    this.arn,
    this.assumeRolePolicyDocument,
    this.description,
    this.maxSessionDuration,
    this.roleId,
    this.roleName,
    this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'assumeRolePolicyDocument': ?assumeRolePolicyDocument,
      'description': ?description,
      'maxSessionDuration': ?maxSessionDuration,
      'roleId': ?roleId,
      'roleName': ?roleName,
      'updateDate': ?updateDate,
    };
  }

  factory RoleState.fromMap(Map<String, dynamic> map) {
    return RoleState(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] == null ? null : (map['assumeRolePolicyDocument']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : (map['maxSessionDuration']! as int).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName']! as String).input(),
      updateDate: map['updateDate'] == null ? null : (map['updateDate']! as String).input(),
    );
  }
}


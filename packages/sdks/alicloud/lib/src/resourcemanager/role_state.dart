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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? assumeRolePolicyDocument,
    pulumi.Output<String>? description,
    pulumi.Output<int>? maxSessionDuration,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? updateDate,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      assumeRolePolicyDocument = pulumi.Input.asOptionalInput<String>(assumeRolePolicyDocument),
      description = pulumi.Input.asOptionalInput<String>(description),
      maxSessionDuration = pulumi.Input.asOptionalInput<int>(maxSessionDuration),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      updateDate = pulumi.Input.asOptionalInput<String>(updateDate);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      assumeRolePolicyDocument: map['assumeRolePolicyDocument'] == null ? null : pulumi.Output.create<String>(map['assumeRolePolicyDocument'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxSessionDuration: map['maxSessionDuration'] == null ? null : pulumi.Output.create<int>(map['maxSessionDuration'] as int),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      updateDate: map['updateDate'] == null ? null : pulumi.Output.create<String>(map['updateDate'] as String),
    );
  }
}


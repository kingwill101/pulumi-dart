// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// The Alibaba Cloud Resource Name (ARN) of the role.
  final pulumi.Input<String>? arn;
  /// The suffix of the role name. Only a few service linked roles support custom suffixes. The role name (including its suffix) must be 1 to 64 characters in length and can contain letters, digits, periods (.), and hyphens (-). For example, if the suffix is Example, the role name is ServiceLinkedRoleName_Example.
  final pulumi.Input<String>? customSuffix;
  /// The description of the service linked role.  This parameter must be specified for only the service linked roles that support custom suffixes. Otherwise, the preset value is used and cannot be modified. The description must be 1 to 1,024 characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the role.
  final pulumi.Input<String>? roleId;
  /// The name of the role.
  final pulumi.Input<String>? roleName;
  /// The service name. For more information about the service name, see [Cloud services that support service linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.htm)
  final pulumi.Input<String>? serviceName;

  /// Creates a new [ServiceLinkedRoleState].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the role.
  /// [customSuffix] The suffix of the role name. Only a few service linked roles support custom suffixes. The role name (including its suffix) must be 1 to 64 characters in length and can contain letters, digits, periods (.), and hyphens (-). For example, if the suffix is Example, the role name is ServiceLinkedRoleName_Example.
  /// [description] The description of the service linked role.  This parameter must be specified for only the service linked roles that support custom suffixes. Otherwise, the preset value is used and cannot be modified. The description must be 1 to 1,024 characters in length.
  /// [roleId] The ID of the role.
  /// [roleName] The name of the role.
  /// [serviceName] The service name. For more information about the service name, see [Cloud services that support service linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.htm)
  ServiceLinkedRoleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? customSuffix,
    pulumi.Output<String>? description,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? serviceName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customSuffix = pulumi.Input.asOptionalInput<String>(customSuffix),
      description = pulumi.Input.asOptionalInput<String>(description),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customSuffix': ?customSuffix,
      'description': ?description,
      'roleId': ?roleId,
      'roleName': ?roleName,
      'serviceName': ?serviceName,
    };
  }

  factory ServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customSuffix: map['customSuffix'] == null ? null : pulumi.Output.create<String>(map['customSuffix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}


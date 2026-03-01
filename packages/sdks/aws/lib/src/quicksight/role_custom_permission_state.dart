// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleCustomPermission resources.
class RoleCustomPermissionState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Custom permissions profile name.
  final pulumi.Input<String>? customPermissionsName;
  /// Namespace containing the role. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? role;

  /// Creates a new [RoleCustomPermissionState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [customPermissionsName] Custom permissions profile name.
  /// [namespace] Namespace containing the role. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  RoleCustomPermissionState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? customPermissionsName,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      customPermissionsName = pulumi.Input.asOptionalInput<String>(customPermissionsName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': ?customPermissionsName,
      'namespace': ?namespace,
      'region': ?region,
      'role': ?role,
    };
  }

  factory RoleCustomPermissionState.fromMap(Map<String, dynamic> map) {
    return RoleCustomPermissionState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      customPermissionsName: map['customPermissionsName'] == null ? null : pulumi.Output.create<String>(map['customPermissionsName'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}


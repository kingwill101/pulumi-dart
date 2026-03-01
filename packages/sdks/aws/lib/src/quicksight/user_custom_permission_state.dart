// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserCustomPermission resources.
class UserCustomPermissionState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Custom permissions profile name.
  final pulumi.Input<String>? customPermissionsName;
  /// Namespace that the user belongs to. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Username of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userName;

  /// Creates a new [UserCustomPermissionState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [customPermissionsName] Custom permissions profile name.
  /// [namespace] Namespace that the user belongs to. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userName] Username of the user.
  UserCustomPermissionState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? customPermissionsName,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userName,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      customPermissionsName = pulumi.Input.asOptionalInput<String>(customPermissionsName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': ?customPermissionsName,
      'namespace': ?namespace,
      'region': ?region,
      'userName': ?userName,
    };
  }

  factory UserCustomPermissionState.fromMap(Map<String, dynamic> map) {
    return UserCustomPermissionState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      customPermissionsName: map['customPermissionsName'] == null ? null : pulumi.Output.create<String>(map['customPermissionsName'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}


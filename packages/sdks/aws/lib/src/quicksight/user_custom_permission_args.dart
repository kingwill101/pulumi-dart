// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_user_custom_permission_user_custom_permission_args_doc}
/// The set of arguments for UserCustomPermission.
/// {@endtemplate}
/// {@macro pulumi_quicksight_user_custom_permission_user_custom_permission_args_doc}
class UserCustomPermissionArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Custom permissions profile name.
  final pulumi.Input<String> customPermissionsName;
  /// Namespace that the user belongs to. Defaults to `default`.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Username of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// Creates a new [UserCustomPermissionArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [customPermissionsName] Custom permissions profile name.
  /// [namespace] Namespace that the user belongs to. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userName] Username of the user.
  UserCustomPermissionArgs({
    this.awsAccountId,
    required this.customPermissionsName,
    this.namespace,
    this.region,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': customPermissionsName,
      'namespace': ?namespace,
      'region': ?region,
      'userName': userName,
    };
  }

  factory UserCustomPermissionArgs.fromMap(Map<String, dynamic> map) {
    return UserCustomPermissionArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPermissionsName: pulumi.Input.fromValue(map['customPermissionsName'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}


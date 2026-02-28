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
    String? awsAccountId,
    required String customPermissionsName,
    String? namespace,
    String? region,
    required String userName,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        customPermissionsName =
            pulumi.Input.asInput<String>(customPermissionsName),
        namespace = pulumi.Input.asOptionalInput<String>(namespace),
        region = pulumi.Input.asOptionalInput<String>(region),
        userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['customPermissionsName'] = customPermissionsName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory UserCustomPermissionArgs.fromMap(Map<String, dynamic> map) {
    return UserCustomPermissionArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      customPermissionsName: map['customPermissionsName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userName: map['userName'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_account_custom_permission_account_custom_permission_args_doc}
/// The set of arguments for AccountCustomPermission.
/// {@endtemplate}
/// {@macro pulumi_quicksight_account_custom_permission_account_custom_permission_args_doc}
class AccountCustomPermissionArgs {
  /// AWS account ID. Defaults to the account ID determined from the provider configuration.
  final pulumi.Input<String?>? awsAccountId;
  /// Name of the custom permissions profile to apply to the account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccountCustomPermissionArgs].
  /// [awsAccountId] AWS account ID. Defaults to the account ID determined from the provider configuration.
  /// [customPermissionsName] Name of the custom permissions profile to apply to the account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccountCustomPermissionArgs({
    this.awsAccountId,
    required this.customPermissionsName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': customPermissionsName,
      'region': ?region,
    };
  }

  factory AccountCustomPermissionArgs.fromMap(Map<String, dynamic> map) {
    return AccountCustomPermissionArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPermissionsName: pulumi.Input.fromValue(map['customPermissionsName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

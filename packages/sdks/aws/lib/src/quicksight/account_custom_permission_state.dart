// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountCustomPermission resources.
class AccountCustomPermissionState {
  /// AWS account ID. Defaults to the account ID determined from the provider configuration.
  final pulumi.Input<String?>? awsAccountId;
  /// Name of the custom permissions profile to apply to the account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? customPermissionsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccountCustomPermissionState].
  /// [awsAccountId] AWS account ID. Defaults to the account ID determined from the provider configuration.
  /// [customPermissionsName] Name of the custom permissions profile to apply to the account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccountCustomPermissionState({
    this.awsAccountId,
    this.customPermissionsName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'customPermissionsName': ?customPermissionsName,
      'region': ?region,
    };
  }

  factory AccountCustomPermissionState.fromMap(Map<String, dynamic> map) {
    return AccountCustomPermissionState(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPermissionsName: (() { final guardedValue = map['customPermissionsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

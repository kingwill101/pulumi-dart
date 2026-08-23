// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_account_setting_account_setting_args_doc}
/// The set of arguments for AccountSetting.
/// {@endtemplate}
/// {@macro pulumi_ecr_account_setting_account_setting_args_doc}
class AccountSettingArgs {
  /// Name of the account setting. One of: `BASIC_SCAN_TYPE_VERSION`, `BLOB_MOUNTING`, `REGISTRY_POLICY_SCOPE`.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Setting value that is specified. Valid values are:
  /// * If `name` is specified as `BASIC_SCAN_TYPE_VERSION`, one of: `AWS_NATIVE`, `CLAIR`.
  /// * If `name` is specified as `BLOB_MOUNTING`, one of: `ENABLED`, `DISABLED`.
  /// * If `name` is specified as `REGISTRY_POLICY_SCOPE`, one of: `V1`, `V2`.
  final pulumi.Input<String> value;

  /// Creates a new [AccountSettingArgs].
  /// [name] Name of the account setting. One of: `BASIC_SCAN_TYPE_VERSION`, `BLOB_MOUNTING`, `REGISTRY_POLICY_SCOPE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] Setting value that is specified. Valid values are:
  const AccountSettingArgs({
    this.name,
    this.region,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'value': value,
    };
  }

  factory AccountSettingArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_account_setting_default_account_setting_default_args_doc}
/// The set of arguments for AccountSettingDefault.
/// {@endtemplate}
/// {@macro pulumi_ecs_account_setting_default_account_setting_default_args_doc}
class AccountSettingDefaultArgs {
  /// Name of the account setting to set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the setting.
  final pulumi.Input<String> value;

  /// Creates a new [AccountSettingDefaultArgs].
  /// [name] Name of the account setting to set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] State of the setting.
  AccountSettingDefaultArgs({
    String? name,
    String? region,
    required String value,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'value': value,
    };
  }

  factory AccountSettingDefaultArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingDefaultArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      value: map['value'] as String,
    );
  }
}


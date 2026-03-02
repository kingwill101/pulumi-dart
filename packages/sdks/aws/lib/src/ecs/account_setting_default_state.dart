// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountSettingDefault resources.
class AccountSettingDefaultState {
  /// Name of the account setting to set.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the setting.
  final pulumi.Input<String>? value;

  /// Creates a new [AccountSettingDefaultState].
  /// [name] Name of the account setting to set.
  /// [principalArn] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] State of the setting.
  AccountSettingDefaultState({
    this.name,
    this.principalArn,
    this.region,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'principalArn': ?principalArn,
      'region': ?region,
      'value': ?value,
    };
  }

  factory AccountSettingDefaultState.fromMap(Map<String, dynamic> map) {
    return AccountSettingDefaultState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      principalArn: map['principalArn'] == null ? null : (map['principalArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountSettingDefault resources.
class AccountSettingDefaultState {
  /// Name of the account setting to set.
  final pulumi.Input<String>? name;
  /// ARN that identifies the account setting.
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the setting.
  final pulumi.Input<String>? value;

  /// Creates a new [AccountSettingDefaultState].
  /// [name] Name of the account setting to set.
  /// [principalArn] ARN that identifies the account setting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [value] State of the setting.
  const AccountSettingDefaultState({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalArn: (() { final guardedValue = map['principalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

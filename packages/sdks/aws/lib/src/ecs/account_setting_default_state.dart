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
    pulumi.Output<String>? name,
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? value,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}


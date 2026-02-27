// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountSettingDefault.
class AccountSettingDefaultArgs {
  /// Name of the account setting to set.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the setting.
  final pulumi.Input<String> value;

  AccountSettingDefaultArgs({
    this.name,
    this.region,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['value'] = value;
    return map;
  }

  factory AccountSettingDefaultArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingDefaultArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}

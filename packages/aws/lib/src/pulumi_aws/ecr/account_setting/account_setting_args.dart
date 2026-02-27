// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccountSetting.
class AccountSettingArgs {
  /// Name of the account setting. One of: `BASIC_SCAN_TYPE_VERSION`, `BLOB_MOUNTING`, `REGISTRY_POLICY_SCOPE`.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Setting value that is specified. Valid values are:
  /// * If `name` is specified as `BASIC_SCAN_TYPE_VERSION`, one of: `AWS_NATIVE`, `CLAIR`.
  /// * If `name` is specified as `BLOB_MOUNTING`, one of: `ENABLED`, `DISABLED`.
  /// * If `name` is specified as `REGISTRY_POLICY_SCOPE`, one of: `V1`, `V2`.
  final Input<String> value;

  AccountSettingArgs({
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

  factory AccountSettingArgs.fromMap(Map<String, dynamic> map) {
    return AccountSettingArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      value: Input.asInput<String>(map['value']),
    );
  }
}

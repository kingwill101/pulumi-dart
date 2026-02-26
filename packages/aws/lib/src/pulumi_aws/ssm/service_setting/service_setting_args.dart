// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceSetting.
class ServiceSettingArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  final Input<String> settingId;

  /// Value of the service setting.
  final Input<String> settingValue;

  ServiceSettingArgs({
    this.region,
    required this.settingId,
    required this.settingValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['settingId'] = settingId;
    map['settingValue'] = settingValue;
    return map;
  }

  factory ServiceSettingArgs.fromMap(Map<String, dynamic> map) {
    return ServiceSettingArgs(
      region: Input.asOptionalInput<String>(map['region']),
      settingId: Input.asInput<String>(map['settingId']),
      settingValue: Input.asInput<String>(map['settingValue']),
    );
  }
}

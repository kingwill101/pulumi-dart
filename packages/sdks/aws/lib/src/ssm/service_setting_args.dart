// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_service_setting_service_setting_args_doc}
/// The set of arguments for ServiceSetting.
/// {@endtemplate}
/// {@macro pulumi_ssm_service_setting_service_setting_args_doc}
class ServiceSettingArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  final pulumi.Input<String> settingId;

  /// Value of the service setting.
  final pulumi.Input<String> settingValue;

  /// Creates a new [ServiceSettingArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settingId] ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  /// [settingValue] Value of the service setting.
  ServiceSettingArgs({
    this.region,
    required this.settingId,
    required this.settingValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'settingId': settingId,
      'settingValue': settingValue,
    };
  }

  factory ServiceSettingArgs.fromMap(Map<String, dynamic> map) {
    return ServiceSettingArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settingId: pulumi.Input.fromValue(map['settingId'] as String),
      settingValue: pulumi.Input.fromValue(map['settingValue'] as String),
    );
  }
}

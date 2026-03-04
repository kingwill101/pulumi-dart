// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceSetting resources.
class ServiceSettingState {
  /// ARN of the service setting.
  final pulumi.Input<String>? arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  final pulumi.Input<String>? settingId;

  /// Value of the service setting.
  final pulumi.Input<String>? settingValue;

  /// Status of the service setting. Value can be `Default`, `Customized` or `PendingUpdate`.
  final pulumi.Input<String>? status;

  /// Creates a new [ServiceSettingState].
  /// [arn] ARN of the service setting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settingId] ID of the service setting. Valid values are shown in the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_GetServiceSetting.html#API_GetServiceSetting_RequestSyntax).
  /// [settingValue] Value of the service setting.
  /// [status] Status of the service setting. Value can be `Default`, `Customized` or `PendingUpdate`.
  ServiceSettingState({
    this.arn,
    this.region,
    this.settingId,
    this.settingValue,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'settingId': ?settingId,
      'settingValue': ?settingValue,
      'status': ?status,
    };
  }

  factory ServiceSettingState.fromMap(Map<String, dynamic> map) {
    return ServiceSettingState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settingId: (() {
        final guardedValue = map['settingId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      settingValue: (() {
        final guardedValue = map['settingValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

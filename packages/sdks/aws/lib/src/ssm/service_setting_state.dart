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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? settingId,
    pulumi.Output<String>? settingValue,
    pulumi.Output<String>? status,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      settingId = pulumi.Input.asOptionalInput<String>(settingId),
      settingValue = pulumi.Input.asOptionalInput<String>(settingValue),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settingId: map['settingId'] == null ? null : pulumi.Output.create<String>(map['settingId'] as String),
      settingValue: map['settingValue'] == null ? null : pulumi.Output.create<String>(map['settingValue'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


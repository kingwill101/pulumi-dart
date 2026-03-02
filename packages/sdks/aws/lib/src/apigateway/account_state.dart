// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_throttle_setting.dart';

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// The version of the API keys used for the account.
  final pulumi.Input<String>? apiKeyVersion;
  /// ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more [in AWS Docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-stage-settings.html#how-to-stage-settings-console). Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
  final pulumi.Input<String>? cloudwatchRoleArn;
  /// A list of features supported for the account.
  final pulumi.Input<List<String>>? features;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Account-Level throttle settings. See exported fields below.
  final pulumi.Input<List<AccountThrottleSetting>>? throttleSettings;

  /// Creates a new [AccountState].
  /// [apiKeyVersion] The version of the API keys used for the account.
  /// [cloudwatchRoleArn] ARN of an IAM role for CloudWatch (to allow logging & monitoring). See more [in AWS Docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-stage-settings.html#how-to-stage-settings-console). Logging & monitoring can be enabled/disabled and otherwise tuned on the API Gateway Stage level.
  /// [features] A list of features supported for the account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [throttleSettings] Account-Level throttle settings. See exported fields below.
  AccountState({
    this.apiKeyVersion,
    this.cloudwatchRoleArn,
    this.features,
    this.region,
    this.throttleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyVersion': ?apiKeyVersion,
      'cloudwatchRoleArn': ?cloudwatchRoleArn,
      'features': ?features,
      'region': ?region,
      'throttleSettings': ?pulumi.Input.mapOptionalInputValue<List<AccountThrottleSetting>, List<Map<String, dynamic>>>(throttleSettings, (value) => pulumi.Input.encodeList<AccountThrottleSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      apiKeyVersion: map['apiKeyVersion'] == null ? null : (map['apiKeyVersion'] as String).input(),
      cloudwatchRoleArn: map['cloudwatchRoleArn'] == null ? null : (map['cloudwatchRoleArn'] as String).input(),
      features: map['features'] == null ? null : ((map['features'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      throttleSettings: map['throttleSettings'] == null ? null : (pulumi.Input.decodeList<AccountThrottleSetting>(map['throttleSettings'], (value) => AccountThrottleSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


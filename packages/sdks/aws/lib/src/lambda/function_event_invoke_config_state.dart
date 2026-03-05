// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_invoke_config_destination_config.dart';

/// Input properties used for looking up and filtering FunctionEventInvokeConfig resources.
class FunctionEventInvokeConfigState {
  /// Configuration block with destination configuration. See below.
  final pulumi.Input<FunctionEventInvokeConfigDestinationConfig>? destinationConfig;
  /// Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? functionName;
  /// Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  final pulumi.Input<int>? maximumEventAgeInSeconds;
  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  final pulumi.Input<int>? maximumRetryAttempts;
  /// Lambda Function published version, `$LATEST`, or Lambda Alias name.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FunctionEventInvokeConfigState].
  /// [destinationConfig] Configuration block with destination configuration. See below.
  /// [functionName] Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  /// [maximumEventAgeInSeconds] Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  /// [maximumRetryAttempts] Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  /// [qualifier] Lambda Function published version, `$LATEST`, or Lambda Alias name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FunctionEventInvokeConfigState({
    this.destinationConfig,
    this.functionName,
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
    this.qualifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEventInvokeConfigDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'functionName': ?functionName,
      'maximumEventAgeInSeconds': ?maximumEventAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'qualifier': ?qualifier,
      'region': ?region,
    };
  }

  factory FunctionEventInvokeConfigState.fromMap(Map<String, dynamic> map) {
    return FunctionEventInvokeConfigState(
      destinationConfig: (() { final guardedValue = map['destinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionEventInvokeConfigDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumEventAgeInSeconds: (() { final guardedValue = map['maximumEventAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumRetryAttempts: (() { final guardedValue = map['maximumRetryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_event_invoke_config_destination_config/function_event_invoke_config_destination_config.dart';

/// The set of arguments for FunctionEventInvokeConfig.
class FunctionEventInvokeConfigArgs {
  /// Configuration block with destination configuration. See below.
  final pulumi.Input<FunctionEventInvokeConfigDestinationConfig>?
      destinationConfig;

  /// Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;

  /// Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  final pulumi.Input<int>? maximumEventAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  final pulumi.Input<int>? maximumRetryAttempts;

  /// Lambda Function published version, `$LATEST`, or Lambda Alias name.
  final pulumi.Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  FunctionEventInvokeConfigArgs({
    this.destinationConfig,
    required this.functionName,
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
    this.qualifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationConfigValue = destinationConfig;
    if (destinationConfigValue != null) {
      map['destinationConfig'] = pulumi.Input.mapOptionalInputValue<
              FunctionEventInvokeConfigDestinationConfig, Map<String, dynamic>>(
          destinationConfigValue, (value) => value.toMap());
    }
    map['functionName'] = functionName;
    final maximumEventAgeInSecondsValue = maximumEventAgeInSeconds;
    if (maximumEventAgeInSecondsValue != null) {
      map['maximumEventAgeInSeconds'] = maximumEventAgeInSecondsValue;
    }
    final maximumRetryAttemptsValue = maximumRetryAttempts;
    if (maximumRetryAttemptsValue != null) {
      map['maximumRetryAttempts'] = maximumRetryAttemptsValue;
    }
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FunctionEventInvokeConfigArgs.fromMap(Map<String, dynamic> map) {
    return FunctionEventInvokeConfigArgs(
      destinationConfig: pulumi.Input.asOptionalInput<
          FunctionEventInvokeConfigDestinationConfig>(map['destinationConfig']),
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      maximumEventAgeInSeconds:
          pulumi.Input.asOptionalInput<int>(map['maximumEventAgeInSeconds']),
      maximumRetryAttempts:
          pulumi.Input.asOptionalInput<int>(map['maximumRetryAttempts']),
      qualifier: pulumi.Input.asOptionalInput<String>(map['qualifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}

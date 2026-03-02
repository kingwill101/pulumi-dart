// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_event_invoke_config_destination_config.dart';

/// {@template pulumi_lambda_function_event_invoke_config_function_event_invoke_config_args_doc}
/// The set of arguments for FunctionEventInvokeConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_function_event_invoke_config_function_event_invoke_config_args_doc}
class FunctionEventInvokeConfigArgs {
  /// Configuration block with destination configuration. See below.
  final pulumi.Input<FunctionEventInvokeConfigDestinationConfig>? destinationConfig;
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

  /// Creates a new [FunctionEventInvokeConfigArgs].
  /// [destinationConfig] Configuration block with destination configuration. See below.
  /// [functionName] Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  /// [maximumEventAgeInSeconds] Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  /// [maximumRetryAttempts] Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  /// [qualifier] Lambda Function published version, `$LATEST`, or Lambda Alias name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FunctionEventInvokeConfigArgs({
    this.destinationConfig,
    required this.functionName,
    this.maximumEventAgeInSeconds,
    this.maximumRetryAttempts,
    this.qualifier,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConfig': ?pulumi.Input.mapOptionalInputValue<FunctionEventInvokeConfigDestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'functionName': functionName,
      'maximumEventAgeInSeconds': ?maximumEventAgeInSeconds,
      'maximumRetryAttempts': ?maximumRetryAttempts,
      'qualifier': ?qualifier,
      'region': ?region,
    };
  }

  factory FunctionEventInvokeConfigArgs.fromMap(Map<String, dynamic> map) {
    return FunctionEventInvokeConfigArgs(
      destinationConfig: map['destinationConfig'] == null ? null : (FunctionEventInvokeConfigDestinationConfig.fromMap((map['destinationConfig'] as Map).cast<String, dynamic>())).input(),
      functionName: (map['functionName'] as String).input(),
      maximumEventAgeInSeconds: map['maximumEventAgeInSeconds'] == null ? null : (map['maximumEventAgeInSeconds'] as int).input(),
      maximumRetryAttempts: map['maximumRetryAttempts'] == null ? null : (map['maximumRetryAttempts'] as int).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


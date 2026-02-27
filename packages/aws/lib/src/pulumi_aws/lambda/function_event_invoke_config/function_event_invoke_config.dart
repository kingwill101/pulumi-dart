import 'package:pulumi/pulumi.dart';
import '../function_event_invoke_config_destination_config/function_event_invoke_config_destination_config.dart';
import 'function_event_invoke_config_args.dart';

/// Manages an AWS Lambda Function Event Invoke Config. Use this resource to configure error handling and destinations for asynchronous Lambda function invocations.
///
/// More information about asynchronous invocations and the configurable values can be found in the [Lambda Developer Guide](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html).
///
/// ## Example Usage
///
/// ### Complete Error Handling and Destinations
///
/// > **Note:** Ensure the Lambda Function IAM Role has necessary permissions for the destination, such as `sqs:SendMessage` or `sns:Publish`, otherwise the API will return a generic `InvalidParameterValueException: The destination ARN arn:PARTITION:SERVICE:REGION:ACCOUNT:RESOURCE is invalid.` error.
///
///
///
/// ### Error Handling Only
///
///
///
/// ### Configuration for Lambda Alias
///
///
///
/// ### Configuration for Published Version
///
///
///
/// ### Configuration for Latest Version
///
///
///
/// ### Multiple Destination Types
///
///
///
/// ## Import
///
/// ARN with qualifier:
///
///
/// Name without qualifier (all versions and aliases):
///
///
/// Name with qualifier:
///
///
/// For backwards compatibility, the following legacy `pulumi import` commands are also supported:
///
/// Using ARN without qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example arn:aws:lambda:us-east-1:123456789012:function:example
/// ```
///
/// Using ARN with qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example arn:aws:lambda:us-east-1:123456789012:function:example:production
/// ```
///
/// Name without qualifier (all versions and aliases):
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example example
/// ```
///
/// Name with qualifier:
///
/// ```sh
/// $ pulumi import aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig example example:production
/// ```
class FunctionEventInvokeConfig extends CustomResource {
  /// Configuration block with destination configuration. See below.
  late final Output<FunctionEventInvokeConfigDestinationConfig?>
      destinationConfig;

  /// Name or ARN of the Lambda Function, omitting any version or alias qualifier.
  ///
  /// The following arguments are optional:
  late final Output<String> functionName;

  /// Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600.
  late final Output<int?> maximumEventAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2.
  late final Output<int?> maximumRetryAttempts;

  /// Lambda Function published version, `$LATEST`, or Lambda Alias name.
  late final Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  FunctionEventInvokeConfig(
    String name, {
    FunctionEventInvokeConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionEventInvokeConfig:FunctionEventInvokeConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinationConfig =
        registerOutput<FunctionEventInvokeConfigDestinationConfig?>(
            'destinationConfig');
    this.functionName = registerOutput<String>('functionName');
    this.maximumEventAgeInSeconds =
        registerOutput<int?>('maximumEventAgeInSeconds');
    this.maximumRetryAttempts = registerOutput<int?>('maximumRetryAttempts');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
  }
}

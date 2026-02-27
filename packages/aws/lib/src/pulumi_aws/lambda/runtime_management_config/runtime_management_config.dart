import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_management_config_args.dart';

/// Manages an AWS Lambda Runtime Management Config. Use this resource to control how Lambda updates the runtime for your function.
///
/// Refer to the [AWS Lambda documentation](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) for supported runtimes.
///
/// > **Note:** Deletion of this resource returns the runtime update mode to `Auto` (the default behavior). To leave the configured runtime management options in-place, use a `removed` block with the destroy lifecycle set to `false`.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Manual Update
///
///
///
/// > **Note:** Once the runtime update mode is set to `Manual`, the `aws.lambda.Function` `runtime` cannot be updated. To upgrade a runtime, the `update_runtime_on` argument must be set to `Auto` or `FunctionUpdate` prior to changing the function's `runtime` argument.
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Runtime Management Config using a comma-delimited string combining `function_name` and `qualifier`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/runtimeManagementConfig:RuntimeManagementConfig example example,$LATEST
/// ```
class RuntimeManagementConfig extends pulumi.CustomResource {
  /// ARN of the function.
  late final pulumi.Output<String> functionArn;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;

  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  late final pulumi.Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  late final pulumi.Output<String?> runtimeVersionArn;

  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  late final pulumi.Output<String?> updateRuntimeOn;

  RuntimeManagementConfig(
    String name, {
    RuntimeManagementConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/runtimeManagementConfig:RuntimeManagementConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
    this.runtimeVersionArn = registerOutput<String?>('runtimeVersionArn');
    this.updateRuntimeOn = registerOutput<String?>('updateRuntimeOn');
  }
}

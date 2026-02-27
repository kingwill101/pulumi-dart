import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_recursion_config_args.dart';

/// Manages an AWS Lambda Function Recursion Config. Use this resource to control how Lambda handles recursive function invocations to prevent infinite loops.
///
/// > **Note:** Destruction of this resource will return the `recursive_loop` configuration back to the default value of `Terminate`.
///
/// ## Example Usage
///
/// ### Allow Recursive Invocations
///
///
///
/// ### Production Safety Configuration
///
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/functionRecursionConfig:FunctionRecursionConfig example recursive_processor
/// ```
class FunctionRecursionConfig extends pulumi.CustomResource {
  /// Name of the Lambda function.
  late final pulumi.Output<String> functionName;

  /// Lambda function recursion configuration. Valid values are `Allow` or `Terminate`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> recursiveLoop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  FunctionRecursionConfig(
    String name, {
    FunctionRecursionConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionRecursionConfig:FunctionRecursionConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionName = registerOutput<String>('functionName');
    this.recursiveLoop = registerOutput<String>('recursiveLoop');
    this.region = registerOutput<String>('region');
  }
}

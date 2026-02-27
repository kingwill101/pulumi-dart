import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_concurrency_config_args.dart';

/// Manages an AWS Lambda Provisioned Concurrency Configuration. Use this resource to configure provisioned concurrency for Lambda functions.
///
/// > **Note:** Setting `skip_destroy` to `true` means that the AWS Provider will not destroy a provisioned concurrency configuration, even when running `pulumi destroy`. The configuration is thus an intentional dangling resource that is not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Alias Name
///
///
///
/// ### Function Version
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a Lambda Provisioned Concurrency Configuration using the `function_name` and `qualifier` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/provisionedConcurrencyConfig:ProvisionedConcurrencyConfig example example,production
/// ```
class ProvisionedConcurrencyConfig extends pulumi.CustomResource {
  /// Name or Amazon Resource Name (ARN) of the Lambda Function.
  late final pulumi.Output<String> functionName;

  /// Amount of capacity to allocate. Must be greater than or equal to 1.
  late final pulumi.Output<int> provisionedConcurrentExecutions;

  /// Lambda Function version or Lambda Alias name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether to retain the provisioned concurrency configuration upon destruction. Defaults to `false`. If set to `true`, the resource is simply removed from state instead.
  late final pulumi.Output<bool?> skipDestroy;

  ProvisionedConcurrencyConfig(
    String name, {
    ProvisionedConcurrencyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/provisionedConcurrencyConfig:ProvisionedConcurrencyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionName = registerOutput<String>('functionName');
    this.provisionedConcurrentExecutions =
        registerOutput<int>('provisionedConcurrentExecutions');
    this.qualifier = registerOutput<String>('qualifier');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}

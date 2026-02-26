import 'package:pulumi/pulumi.dart';
import 'provisioned_concurrency_config_args.dart';

/// Manages an AWS Lambda Provisioned Concurrency Configuration. Use this resource to configure provisioned concurrency for Lambda functions.
///
/// > **Note:** Setting <span pulumi-lang-nodejs="`skipDestroy`" pulumi-lang-dotnet="`SkipDestroy`" pulumi-lang-go="`skipDestroy`" pulumi-lang-python="`skip_destroy`" pulumi-lang-yaml="`skipDestroy`" pulumi-lang-java="`skipDestroy`">`skip_destroy`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> means that the AWS Provider will not destroy a provisioned concurrency configuration, even when running `pulumi destroy`. The configuration is thus an intentional dangling resource that is not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Alias Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.ProvisionedConcurrencyConfig("example", {
/// functionName: exampleAwsLambdaAlias.functionName,
/// provisionedConcurrentExecutions: 1,
/// qualifier: exampleAwsLambdaAlias.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.ProvisionedConcurrencyConfig("example",
/// function_name=example_aws_lambda_alias["functionName"],
/// provisioned_concurrent_executions=1,
/// qualifier=example_aws_lambda_alias["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.ProvisionedConcurrencyConfig("example", new()
/// {
/// FunctionName = exampleAwsLambdaAlias.FunctionName,
/// ProvisionedConcurrentExecutions = 1,
/// Qualifier = exampleAwsLambdaAlias.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewProvisionedConcurrencyConfig(ctx, "example", &lambda.ProvisionedConcurrencyConfigArgs{
/// FunctionName:                    pulumi.Any(exampleAwsLambdaAlias.FunctionName),
/// ProvisionedConcurrentExecutions: pulumi.Int(1),
/// Qualifier:                       pulumi.Any(exampleAwsLambdaAlias.Name),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.ProvisionedConcurrencyConfig;
/// import com.pulumi.aws.lambda.ProvisionedConcurrencyConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ProvisionedConcurrencyConfig("example", ProvisionedConcurrencyConfigArgs.builder()
/// .functionName(exampleAwsLambdaAlias.functionName())
/// .provisionedConcurrentExecutions(1)
/// .qualifier(exampleAwsLambdaAlias.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:ProvisionedConcurrencyConfig
/// properties:
/// functionName: ${exampleAwsLambdaAlias.functionName}
/// provisionedConcurrentExecutions: 1
/// qualifier: ${exampleAwsLambdaAlias.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Function Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.ProvisionedConcurrencyConfig("example", {
/// functionName: exampleAwsLambdaFunction.functionName,
/// provisionedConcurrentExecutions: 1,
/// qualifier: exampleAwsLambdaFunction.version,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.ProvisionedConcurrencyConfig("example",
/// function_name=example_aws_lambda_function["functionName"],
/// provisioned_concurrent_executions=1,
/// qualifier=example_aws_lambda_function["version"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.ProvisionedConcurrencyConfig("example", new()
/// {
/// FunctionName = exampleAwsLambdaFunction.FunctionName,
/// ProvisionedConcurrentExecutions = 1,
/// Qualifier = exampleAwsLambdaFunction.Version,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewProvisionedConcurrencyConfig(ctx, "example", &lambda.ProvisionedConcurrencyConfigArgs{
/// FunctionName:                    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// ProvisionedConcurrentExecutions: pulumi.Int(1),
/// Qualifier:                       pulumi.Any(exampleAwsLambdaFunction.Version),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.ProvisionedConcurrencyConfig;
/// import com.pulumi.aws.lambda.ProvisionedConcurrencyConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ProvisionedConcurrencyConfig("example", ProvisionedConcurrencyConfigArgs.builder()
/// .functionName(exampleAwsLambdaFunction.functionName())
/// .provisionedConcurrentExecutions(1)
/// .qualifier(exampleAwsLambdaFunction.version())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:ProvisionedConcurrencyConfig
/// properties:
/// functionName: ${exampleAwsLambdaFunction.functionName}
/// provisionedConcurrentExecutions: 1
/// qualifier: ${exampleAwsLambdaFunction.version}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a Lambda Provisioned Concurrency Configuration using the <span pulumi-lang-nodejs="`functionName`" pulumi-lang-dotnet="`FunctionName`" pulumi-lang-go="`functionName`" pulumi-lang-python="`function_name`" pulumi-lang-yaml="`functionName`" pulumi-lang-java="`functionName`">`function_name`</span> and <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/provisionedConcurrencyConfig:ProvisionedConcurrencyConfig example example,production
/// ```
class ProvisionedConcurrencyConfig extends CustomResource {
  /// Name or Amazon Resource Name (ARN) of the Lambda Function.
  late final Output<String> functionName;

  /// Amount of capacity to allocate. Must be greater than or equal to 1.
  late final Output<int> provisionedConcurrentExecutions;

  /// Lambda Function version or Lambda Alias name.
  ///
  /// The following arguments are optional:
  late final Output<String> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to retain the provisioned concurrency configuration upon destruction. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the resource is simply removed from state instead.
  late final Output<bool?> skipDestroy;

  ProvisionedConcurrencyConfig(
    String name, {
    ProvisionedConcurrencyConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/provisionedConcurrencyConfig:ProvisionedConcurrencyConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.functionName = registerOutput<String>('functionName');
    this.provisionedConcurrentExecutions =
        registerOutput<int>('provisionedConcurrentExecutions');
    this.qualifier = registerOutput<String>('qualifier');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
  }
}

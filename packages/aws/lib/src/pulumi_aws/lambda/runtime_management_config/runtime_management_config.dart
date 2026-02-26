import 'package:pulumi/pulumi.dart';
import 'runtime_management_config_args.dart';

/// Manages an AWS Lambda Runtime Management Config. Use this resource to control how Lambda updates the runtime for your function.
///
/// Refer to the [AWS Lambda documentation](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) for supported runtimes.
///
/// > **Note:** Deletion of this resource returns the runtime update mode to `Auto` (the default behavior). To leave the configured runtime management options in-place, use a <span pulumi-lang-nodejs="`removed`" pulumi-lang-dotnet="`Removed`" pulumi-lang-go="`removed`" pulumi-lang-python="`removed`" pulumi-lang-yaml="`removed`" pulumi-lang-java="`removed`">`removed`</span> block with the destroy lifecycle set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.RuntimeManagementConfig("example", {
/// functionName: exampleAwsLambdaFunction.functionName,
/// updateRuntimeOn: "FunctionUpdate",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.RuntimeManagementConfig("example",
/// function_name=example_aws_lambda_function["functionName"],
/// update_runtime_on="FunctionUpdate")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.RuntimeManagementConfig("example", new()
/// {
/// FunctionName = exampleAwsLambdaFunction.FunctionName,
/// UpdateRuntimeOn = "FunctionUpdate",
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
/// _, err := lambda.NewRuntimeManagementConfig(ctx, "example", &lambda.RuntimeManagementConfigArgs{
/// FunctionName:    pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// UpdateRuntimeOn: pulumi.String("FunctionUpdate"),
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
/// import com.pulumi.aws.lambda.RuntimeManagementConfig;
/// import com.pulumi.aws.lambda.RuntimeManagementConfigArgs;
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
/// var example = new RuntimeManagementConfig("example", RuntimeManagementConfigArgs.builder()
/// .functionName(exampleAwsLambdaFunction.functionName())
/// .updateRuntimeOn("FunctionUpdate")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:RuntimeManagementConfig
/// properties:
/// functionName: ${exampleAwsLambdaFunction.functionName}
/// updateRuntimeOn: FunctionUpdate
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Manual Update
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.RuntimeManagementConfig("example", {
/// functionName: exampleAwsLambdaFunction.functionName,
/// updateRuntimeOn: "Manual",
/// runtimeVersionArn: "arn:aws:lambda:us-east-1::runtime:abcd1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.RuntimeManagementConfig("example",
/// function_name=example_aws_lambda_function["functionName"],
/// update_runtime_on="Manual",
/// runtime_version_arn="arn:aws:lambda:us-east-1::runtime:abcd1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.RuntimeManagementConfig("example", new()
/// {
/// FunctionName = exampleAwsLambdaFunction.FunctionName,
/// UpdateRuntimeOn = "Manual",
/// RuntimeVersionArn = "arn:aws:lambda:us-east-1::runtime:abcd1234",
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
/// _, err := lambda.NewRuntimeManagementConfig(ctx, "example", &lambda.RuntimeManagementConfigArgs{
/// FunctionName:      pulumi.Any(exampleAwsLambdaFunction.FunctionName),
/// UpdateRuntimeOn:   pulumi.String("Manual"),
/// RuntimeVersionArn: pulumi.String("arn:aws:lambda:us-east-1::runtime:abcd1234"),
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
/// import com.pulumi.aws.lambda.RuntimeManagementConfig;
/// import com.pulumi.aws.lambda.RuntimeManagementConfigArgs;
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
/// var example = new RuntimeManagementConfig("example", RuntimeManagementConfigArgs.builder()
/// .functionName(exampleAwsLambdaFunction.functionName())
/// .updateRuntimeOn("Manual")
/// .runtimeVersionArn("arn:aws:lambda:us-east-1::runtime:abcd1234")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:RuntimeManagementConfig
/// properties:
/// functionName: ${exampleAwsLambdaFunction.functionName}
/// updateRuntimeOn: Manual
/// runtimeVersionArn: arn:aws:lambda:us-east-1::runtime:abcd1234
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** Once the runtime update mode is set to `Manual`, the <span pulumi-lang-nodejs="`aws.lambda.Function`" pulumi-lang-dotnet="`aws.lambda.Function`" pulumi-lang-go="`lambda.Function`" pulumi-lang-python="`lambda.Function`" pulumi-lang-yaml="`aws.lambda.Function`" pulumi-lang-java="`aws.lambda.Function`">`aws.lambda.Function`</span> <span pulumi-lang-nodejs="`runtime`" pulumi-lang-dotnet="`Runtime`" pulumi-lang-go="`runtime`" pulumi-lang-python="`runtime`" pulumi-lang-yaml="`runtime`" pulumi-lang-java="`runtime`">`runtime`</span> cannot be updated. To upgrade a runtime, the <span pulumi-lang-nodejs="`updateRuntimeOn`" pulumi-lang-dotnet="`UpdateRuntimeOn`" pulumi-lang-go="`updateRuntimeOn`" pulumi-lang-python="`update_runtime_on`" pulumi-lang-yaml="`updateRuntimeOn`" pulumi-lang-java="`updateRuntimeOn`">`update_runtime_on`</span> argument must be set to `Auto` or `FunctionUpdate` prior to changing the function's <span pulumi-lang-nodejs="`runtime`" pulumi-lang-dotnet="`Runtime`" pulumi-lang-go="`runtime`" pulumi-lang-python="`runtime`" pulumi-lang-yaml="`runtime`" pulumi-lang-java="`runtime`">`runtime`</span> argument.
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Runtime Management Config using a comma-delimited string combining <span pulumi-lang-nodejs="`functionName`" pulumi-lang-dotnet="`FunctionName`" pulumi-lang-go="`functionName`" pulumi-lang-python="`function_name`" pulumi-lang-yaml="`functionName`" pulumi-lang-java="`functionName`">`function_name`</span> and <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/runtimeManagementConfig:RuntimeManagementConfig example example,$LATEST
/// ```
class RuntimeManagementConfig extends CustomResource {
  /// ARN of the function.
  late final Output<String> functionArn;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  late final Output<String> functionName;

  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  late final Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the runtime version. Only required when <span pulumi-lang-nodejs="`updateRuntimeOn`" pulumi-lang-dotnet="`UpdateRuntimeOn`" pulumi-lang-go="`updateRuntimeOn`" pulumi-lang-python="`update_runtime_on`" pulumi-lang-yaml="`updateRuntimeOn`" pulumi-lang-java="`updateRuntimeOn`">`update_runtime_on`</span> is `Manual`.
  late final Output<String?> runtimeVersionArn;

  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  late final Output<String?> updateRuntimeOn;

  RuntimeManagementConfig(
    String name, {
    RuntimeManagementConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/runtimeManagementConfig:RuntimeManagementConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
    this.runtimeVersionArn = registerOutput<String?>('runtimeVersionArn');
    this.updateRuntimeOn = registerOutput<String?>('updateRuntimeOn');
  }
}

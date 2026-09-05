import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_scaling_config_args.dart';
import 'function_scaling_config_function_scaling_config.dart';
import 'function_scaling_config_state.dart';
import 'function_scaling_config_timeouts.dart';

/// Manages the scaling configuration for an AWS Lambda function. The scaling configuration defines the minimum and maximum number of execution environments that can be provisioned for the function, allowing you to control scaling behavior and resource allocation.
///
/// &gt; **NOTE:** This resource only works with Lambda functions that have a capacity provider configuration.
///
/// &gt; **NOTE:** Per common practice, this resource waits for the scaling configuration to converge before apply completes. It determines the min and max execution environments have settled using Requested and Applied scaling configs returned by Lambda. The [API documentation](https://docs.aws.amazon.com/lambda/latest/api/API_GetFunctionScalingConfig.html) is ambiguous about how these behave. From observation, Requested is only returned prior to settlement whereas Applied may be partially returned until settlement when it is fully returned. Should the observed behavior change, this resource will need to be updated to match.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.CapacityProvider("example", {
///     vpcConfig: {
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
///     name: "example",
/// });
/// const exampleFunction = new aws.lambda.Function("example", {
///     capacityProviderConfig: {
///         lambdaManagedInstancesCapacityProviderConfig: {
///             capacityProviderArn: example.arn,
///         },
///     },
///     code: new pulumi.asset.FileArchive("lambda_function.zip"),
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.Python3d14,
///     memorySize: 32768,
///     publish: true,
///     publishTo: "LATEST_PUBLISHED",
/// });
/// const exampleFunctionScalingConfig = new aws.lambda.FunctionScalingConfig("example", {
///     functionScalingConfig: {
///         minExecutionEnvironments: 3,
///         maxExecutionEnvironments: 100,
///     },
///     functionName: exampleFunction.name,
///     qualifier: "$LATEST.PUBLISHED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.CapacityProvider("example",
///     vpc_config={
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [example_aws_security_group["id"]],
///     },
///     permissions_config={
///         "capacity_provider_operator_role_arn": example_aws_iam_role["arn"],
///     },
///     name="example")
/// example_function = aws.lambda_.Function("example",
///     capacity_provider_config={
///         "lambda_managed_instances_capacity_provider_config": {
///             "capacity_provider_arn": example.arn,
///         },
///     },
///     code=pulumi.FileArchive("lambda_function.zip"),
///     name="example",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D14,
///     memory_size=32768,
///     publish=True,
///     publish_to="LATEST_PUBLISHED")
/// example_function_scaling_config = aws.lambda_.FunctionScalingConfig("example",
///     function_scaling_config={
///         "min_execution_environments": 3,
///         "max_execution_environments": 100,
///     },
///     function_name=example_function.name,
///     qualifier="$LATEST.PUBLISHED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.CapacityProvider("example", new()
///     {
///         VpcConfig = new Aws.Lambda.Inputs.CapacityProviderVpcConfigArgs
///         {
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///             SecurityGroupIds = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///         },
///         PermissionsConfig = new Aws.Lambda.Inputs.CapacityProviderPermissionsConfigArgs
///         {
///             CapacityProviderOperatorRoleArn = exampleAwsIamRole.Arn,
///         },
///         Name = "example",
///     });
///
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         CapacityProviderConfig = new Aws.Lambda.Inputs.FunctionCapacityProviderConfigArgs
///         {
///             LambdaManagedInstancesCapacityProviderConfig = new Aws.Lambda.Inputs.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs
///             {
///                 CapacityProviderArn = example.Arn,
///             },
///         },
///         Code = new FileArchive("lambda_function.zip"),
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d14,
///         MemorySize = 32768,
///         Publish = true,
///         PublishTo = "LATEST_PUBLISHED",
///     });
///
///     var exampleFunctionScalingConfig = new Aws.Lambda.FunctionScalingConfig("example", new()
///     {
///         FunctionScalingConfigDetails = new Aws.Lambda.Inputs.FunctionScalingConfigFunctionScalingConfigArgs
///         {
///             MinExecutionEnvironments = 3,
///             MaxExecutionEnvironments = 100,
///         },
///         FunctionName = exampleFunction.Name,
///         Qualifier = "$LATEST.PUBLISHED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.NewCapacityProvider(ctx, "example", &lambda.CapacityProviderArgs{
/// VpcConfig: &lambda.CapacityProviderVpcConfigArgs{
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:2,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// PermissionsConfig: &lambda.CapacityProviderPermissionsConfigArgs{
/// CapacityProviderOperatorRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// },
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleFunction, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// CapacityProviderConfig: &lambda.FunctionCapacityProviderConfigArgs{
/// LambdaManagedInstancesCapacityProviderConfig: &lambda.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs{
/// CapacityProviderArn: example.Arn,
/// },
/// },
/// Code: pulumi.NewFileArchive("lambda_function.zip"),
/// Name: pulumi.String("example"),
/// Role: pulumi.Any(exampleAwsIamRole.Arn),
/// Handler: pulumi.String("index.handler"),
/// Runtime: pulumi.String(lambda.RuntimePython3d14),
/// MemorySize: pulumi.Int(32768),
/// Publish: pulumi.Bool(true),
/// PublishTo: pulumi.String("LATEST_PUBLISHED"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewFunctionScalingConfig(ctx, "example", &lambda.FunctionScalingConfigArgs{
/// FunctionScalingConfig: &lambda.FunctionScalingConfigFunctionScalingConfigArgs{
/// MinExecutionEnvironments: pulumi.Int(3),
/// MaxExecutionEnvironments: pulumi.Int(100),
/// },
/// FunctionName: exampleFunction.Name,
/// Qualifier: pulumi.String("$LATEST.PUBLISHED"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambda_capacityprovider" "example" {
///   vpc_config = {
///     subnet_ids         = exampleAwsSubnet[*].id
///     security_group_ids = [exampleAwsSecurityGroup.id]
///   }
///   permissions_config = {
///     capacity_provider_operator_role_arn = exampleAwsIamRole.arn
///   }
///   name = "example"
/// }
/// resource "aws_lambda_function" "example" {
///   capacity_provider_config = {
///     lambda_managed_instances_capacity_provider_config = {
///       capacity_provider_arn = aws_lambda_capacityprovider.example.arn
///     }
///   }
///   code        = fileArchive("lambda_function.zip")
///   name        = "example"
///   role        = exampleAwsIamRole.arn
///   handler     = "index.handler"
///   runtime     = "python3.14"
///   memory_size = 32768
///   publish     = true
///   publish_to  = "LATEST_PUBLISHED"
/// }
/// resource "aws_lambda_functionscalingconfig" "example" {
///   function_scaling_config = {
///     min_execution_environments = 3
///     max_execution_environments = 100
///   }
///   function_name = aws_lambda_function.example.name
///   qualifier     = "$LATEST.PUBLISHED"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.CapacityProvider;
/// import com.pulumi.aws.lambda.CapacityProviderArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderPermissionsConfigArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionCapacityProviderConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs;
/// import com.pulumi.aws.lambda.FunctionScalingConfig;
/// import com.pulumi.aws.lambda.FunctionScalingConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionScalingConfigFunctionScalingConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CapacityProvider("example", CapacityProviderArgs.builder()
///             .vpcConfig(CapacityProviderVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .permissionsConfig(CapacityProviderPermissionsConfigArgs.builder()
///                 .capacityProviderOperatorRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .name("example")
///             .build());
///
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .capacityProviderConfig(FunctionCapacityProviderConfigArgs.builder()
///                 .lambdaManagedInstancesCapacityProviderConfig(FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs.builder()
///                     .capacityProviderArn(example.arn())
///                     .build())
///                 .build())
///             .code(new FileArchive("lambda_function.zip"))
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("python3.14")
///             .memorySize(32768)
///             .publish(true)
///             .publishTo("LATEST_PUBLISHED")
///             .build());
///
///         var exampleFunctionScalingConfig = new FunctionScalingConfig("exampleFunctionScalingConfig", FunctionScalingConfigArgs.builder()
///             .functionScalingConfig(FunctionScalingConfigFunctionScalingConfigArgs.builder()
///                 .minExecutionEnvironments(3)
///                 .maxExecutionEnvironments(100)
///                 .build())
///             .functionName(exampleFunction.name())
///             .qualifier("$LATEST.PUBLISHED")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `functionName` (String) Name or ARN of the Lambda function.
/// * `qualifier` (String) Qualifier for the scaling configuration.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Lambda Function Scaling Config using the `functionName` and `qualifier` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/functionScalingConfig:FunctionScalingConfig example my-function,$LATEST.PUBLISHED
/// ```
class FunctionScalingConfig extends pulumi.CustomResource {
  /// ARN of the Lambda function.
  late final pulumi.Output<String> functionArn;
  /// Name or ARN of the Lambda function. Changing this forces a new resource.
  late final pulumi.Output<String> functionName;
  /// Scaling configuration block. See `functionScalingConfig` Block below.
  late final pulumi.Output<FunctionScalingConfigFunctionScalingConfig> functionScalingConfig;
  /// State of the function after the scaling configuration was applied. This reflects the state reported by the most recent create or update and is not refreshed on read.
  late final pulumi.Output<String> functionState;
  /// Qualifier for the scaling configuration. Valid values: `$LATEST.PUBLISHED` to target the latest published version, or a specific numeric version number (e.g., `1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<FunctionScalingConfigTimeouts?> timeouts;

  /// Creates a new [FunctionScalingConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionScalingConfig]. {@macro pulumi_lambda_function_scaling_config_function_scaling_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionScalingConfig(
    String name, {
    FunctionScalingConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionScalingConfig:FunctionScalingConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionScalingConfig = registerOutput<FunctionScalingConfigFunctionScalingConfig>('functionScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigFunctionScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionState = registerOutput<String>('functionState');
    qualifier = registerOutput<String>('qualifier');
    region = registerOutput<String>('region');
    timeouts = registerOutput<FunctionScalingConfigTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FunctionScalingConfig] resource's state with the given [name] and [id].
  static FunctionScalingConfig get(
    String name,
    pulumi.Input<String> id, {
    FunctionScalingConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FunctionScalingConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FunctionScalingConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionScalingConfig:FunctionScalingConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionScalingConfig = registerOutput<FunctionScalingConfigFunctionScalingConfig>('functionScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigFunctionScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionState = registerOutput<String>('functionState');
    qualifier = registerOutput<String>('qualifier');
    region = registerOutput<String>('region');
    timeouts = registerOutput<FunctionScalingConfigTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FunctionScalingConfig] resource.
  FunctionScalingConfig.reference(String urn)
    : super(
        'aws:lambda/functionScalingConfig:FunctionScalingConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionScalingConfig = registerOutput<FunctionScalingConfigFunctionScalingConfig>('functionScalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigFunctionScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionState = registerOutput<String>('functionState');
    qualifier = registerOutput<String>('qualifier');
    region = registerOutput<String>('region');
    timeouts = registerOutput<FunctionScalingConfigTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionScalingConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_args.dart';
import 'capacity_provider_capacity_provider_scaling_config.dart';
import 'capacity_provider_instance_requirement.dart';
import 'capacity_provider_permissions_config.dart';
import 'capacity_provider_state.dart';
import 'capacity_provider_timeouts.dart';
import 'capacity_provider_vpc_config.dart';

/// Manages an AWS Lambda Capacity Provider.
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
///     name: "example",
///     vpcConfig: {
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.CapacityProvider("example",
///     name="example",
///     vpc_config={
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [example_aws_security_group["id"]],
///     },
///     permissions_config={
///         "capacity_provider_operator_role_arn": example_aws_iam_role["arn"],
///     })
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
///         Name = "example",
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
/// _, err := lambda.NewCapacityProvider(ctx, "example", &lambda.CapacityProviderArgs{
/// Name: pulumi.String("example"),
/// VpcConfig: &lambda.CapacityProviderVpcConfigArgs{
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// PermissionsConfig: &lambda.CapacityProviderPermissionsConfigArgs{
/// CapacityProviderOperatorRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// },
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
/// import com.pulumi.aws.lambda.CapacityProvider;
/// import com.pulumi.aws.lambda.CapacityProviderArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderPermissionsConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("example")
///             .vpcConfig(CapacityProviderVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .permissionsConfig(CapacityProviderPermissionsConfigArgs.builder()
///                 .capacityProviderOperatorRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Manual Scaling with Specific Instance Types
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.CapacityProvider("example", {
///     name: "example",
///     vpcConfig: {
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
///     instanceRequirements: [{
///         architectures: ["x86_64"],
///         allowedInstanceTypes: [
///             "c6i.2xlarge",
///             "c7i.2xlarge",
///         ],
///     }],
///     capacityProviderScalingConfigs: [{
///         scalingMode: "Manual",
///         scalingPolicies: [{
///             predefinedMetricType: "LambdaCapacityProviderAverageCPUUtilization",
///             targetValue: 50,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.CapacityProvider("example",
///     name="example",
///     vpc_config={
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [example_aws_security_group["id"]],
///     },
///     permissions_config={
///         "capacity_provider_operator_role_arn": example_aws_iam_role["arn"],
///     },
///     instance_requirements=[{
///         "architectures": ["x86_64"],
///         "allowed_instance_types": [
///             "c6i.2xlarge",
///             "c7i.2xlarge",
///         ],
///     }],
///     capacity_provider_scaling_configs=[{
///         "scaling_mode": "Manual",
///         "scaling_policies": [{
///             "predefined_metric_type": "LambdaCapacityProviderAverageCPUUtilization",
///             "target_value": 50,
///         }],
///     }])
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
///         Name = "example",
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
///         InstanceRequirements = new[]
///         {
///             new Aws.Lambda.Inputs.CapacityProviderInstanceRequirementArgs
///             {
///                 Architectures = new[]
///                 {
///                     "x86_64",
///                 },
///                 AllowedInstanceTypes = new[]
///                 {
///                     "c6i.2xlarge",
///                     "c7i.2xlarge",
///                 },
///             },
///         },
///         CapacityProviderScalingConfigs = new[]
///         {
///             new Aws.Lambda.Inputs.CapacityProviderCapacityProviderScalingConfigArgs
///             {
///                 ScalingMode = "Manual",
///                 ScalingPolicies = new[]
///                 {
///                     new Aws.Lambda.Inputs.CapacityProviderCapacityProviderScalingConfigScalingPolicyArgs
///                     {
///                         PredefinedMetricType = "LambdaCapacityProviderAverageCPUUtilization",
///                         TargetValue = 50,
///                     },
///                 },
///             },
///         },
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
/// _, err := lambda.NewCapacityProvider(ctx, "example", &lambda.CapacityProviderArgs{
/// Name: pulumi.String("example"),
/// VpcConfig: &lambda.CapacityProviderVpcConfigArgs{
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// PermissionsConfig: &lambda.CapacityProviderPermissionsConfigArgs{
/// CapacityProviderOperatorRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// },
/// InstanceRequirements: lambda.CapacityProviderInstanceRequirementArray{
/// &lambda.CapacityProviderInstanceRequirementArgs{
/// Architectures: pulumi.StringArray{
/// pulumi.String("x86_64"),
/// },
/// AllowedInstanceTypes: pulumi.StringArray{
/// pulumi.String("c6i.2xlarge"),
/// pulumi.String("c7i.2xlarge"),
/// },
/// },
/// },
/// CapacityProviderScalingConfigs: lambda.CapacityProviderCapacityProviderScalingConfigArray{
/// &lambda.CapacityProviderCapacityProviderScalingConfigArgs{
/// ScalingMode: pulumi.String("Manual"),
/// ScalingPolicies: lambda.CapacityProviderCapacityProviderScalingConfigScalingPolicyArray{
/// &lambda.CapacityProviderCapacityProviderScalingConfigScalingPolicyArgs{
/// PredefinedMetricType: pulumi.String("LambdaCapacityProviderAverageCPUUtilization"),
/// TargetValue: pulumi.Float64(50),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.lambda.CapacityProvider;
/// import com.pulumi.aws.lambda.CapacityProviderArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderPermissionsConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderInstanceRequirementArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderCapacityProviderScalingConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .name("example")
///             .vpcConfig(CapacityProviderVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .permissionsConfig(CapacityProviderPermissionsConfigArgs.builder()
///                 .capacityProviderOperatorRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .instanceRequirements(CapacityProviderInstanceRequirementArgs.builder()
///                 .architectures("x86_64")
///                 .allowedInstanceTypes(
///                     "c6i.2xlarge",
///                     "c7i.2xlarge")
///                 .build())
///             .capacityProviderScalingConfigs(CapacityProviderCapacityProviderScalingConfigArgs.builder()
///                 .scalingMode("Manual")
///                 .scalingPolicies(CapacityProviderCapacityProviderScalingConfigScalingPolicyArgs.builder()
///                     .predefinedMetricType("LambdaCapacityProviderAverageCPUUtilization")
///                     .targetValue(50.0)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Capacity Provider using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/capacityProvider:CapacityProvider example example
/// ```
class CapacityProvider extends pulumi.CustomResource {
  /// ARN of the Capacity Provider.
  late final pulumi.Output<String> arn;
  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  late final pulumi.Output<List<CapacityProviderCapacityProviderScalingConfig>> capacityProviderScalingConfigs;
  /// Configuration block for instance requirements settings. See Instance Requirements below.
  late final pulumi.Output<List<CapacityProviderInstanceRequirement>> instanceRequirements;
  late final pulumi.Output<String?> kmsKeyArn;
  /// The name of the Capacity Provider.
  late final pulumi.Output<String> name;
  /// Configuration block for permissions settings. See Permissions Config below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CapacityProviderPermissionsConfig> permissionsConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CapacityProviderTimeouts?> timeouts;
  /// Configuration block for VPC settings. See VPC Config below.
  late final pulumi.Output<CapacityProviderVpcConfig> vpcConfig;

  /// Creates a new [CapacityProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityProvider]. {@macro pulumi_lambda_capacity_provider_capacity_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityProvider(
    String name, {
    CapacityProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/capacityProvider:CapacityProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacityProviderScalingConfigs = registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>('capacityProviderScalingConfigs');
    this.instanceRequirements = registerOutput<List<CapacityProviderInstanceRequirement>>('instanceRequirements');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.permissionsConfig = registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts');
    this.vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig');
  }

  /// Gets an existing [CapacityProvider] resource's state with the given [name] and [id].
  static CapacityProvider get(
    String name,
    pulumi.Input<String> id, {
    CapacityProviderState? state,
  }) {
    return CapacityProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/capacityProvider:CapacityProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacityProviderScalingConfigs = registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>('capacityProviderScalingConfigs');
    this.instanceRequirements = registerOutput<List<CapacityProviderInstanceRequirement>>('instanceRequirements');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.permissionsConfig = registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts');
    this.vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig');
  }
}

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
///     vpcConfig: {
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
///     name: "example",
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
///     vpcConfig: {
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
///     capacityProviderScalingConfigs: [{
///         scalingMode: "Manual",
///         scalingPolicies: [{
///             predefinedMetricType: "LambdaCapacityProviderAverageCPUUtilization",
///             targetValue: 50,
///         }],
///     }],
///     instanceRequirements: [{
///         architectures: ["x86_64"],
///         allowedInstanceTypes: [
///             "c6i.2xlarge",
///             "c7i.2xlarge",
///         ],
///     }],
///     name: "example",
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
///     capacity_provider_scaling_configs=[{
///         "scaling_mode": "Manual",
///         "scaling_policies": [{
///             "predefined_metric_type": "LambdaCapacityProviderAverageCPUUtilization",
///             "target_value": float(50),
///         }],
///     }],
///     instance_requirements=[{
///         "architectures": ["x86_64"],
///         "allowed_instance_types": [
///             "c6i.2xlarge",
///             "c7i.2xlarge",
///         ],
///     }],
///     name="example")
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
///         Name = "example",
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
/// VpcConfig: &lambda.CapacityProviderVpcConfigArgs{
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:2,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// PermissionsConfig: &lambda.CapacityProviderPermissionsConfigArgs{
/// CapacityProviderOperatorRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// Name: pulumi.String("example"),
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
///   capacity_provider_scaling_configs {
///     scaling_mode = "Manual"
///     scaling_policies {
///       predefined_metric_type = "LambdaCapacityProviderAverageCPUUtilization"
///       target_value           = 50
///     }
///   }
///   instance_requirements {
///     architectures          = ["x86_64"]
///     allowed_instance_types = ["c6i.2xlarge", "c7i.2xlarge"]
///   }
///   name = "example"
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
/// import com.pulumi.aws.lambda.inputs.CapacityProviderCapacityProviderScalingConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderCapacityProviderScalingConfigScalingPolicyArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderInstanceRequirementArgs;
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
///             .capacityProviderScalingConfigs(CapacityProviderCapacityProviderScalingConfigArgs.builder()
///                 .scalingMode("Manual")
///                 .scalingPolicies(CapacityProviderCapacityProviderScalingConfigScalingPolicyArgs.builder()
///                     .predefinedMetricType("LambdaCapacityProviderAverageCPUUtilization")
///                     .targetValue(50.0)
///                     .build())
///                 .build())
///             .instanceRequirements(CapacityProviderInstanceRequirementArgs.builder()
///                 .architectures("x86_64")
///                 .allowedInstanceTypes(
///                     "c6i.2xlarge",
///                     "c7i.2xlarge")
///                 .build())
///             .name("example")
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
/// * `name` (String) Name of the Lambda capacity provider.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
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
  /// ARN of the KMS key used to encrypt the Capacity Provider.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Name of the Capacity Provider.
  late final pulumi.Output<String> name;
  /// Configuration block for permissions settings. See Permissions Config below.
  late final pulumi.Output<CapacityProviderPermissionsConfig> permissionsConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CapacityProviderTimeouts?> timeouts;
  /// Configuration block for VPC settings. See VPC Config below.
  ///
  /// The following arguments are optional:
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    capacityProviderScalingConfigs = registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>('capacityProviderScalingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(guardedValue, (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    instanceRequirements = registerOutput<List<CapacityProviderInstanceRequirement>>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(guardedValue, (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    permissionsConfig = registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderPermissionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CapacityProvider] resource's state with the given [name] and [id].
  static CapacityProvider get(
    String name,
    pulumi.Input<String> id, {
    CapacityProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CapacityProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    capacityProviderScalingConfigs = registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>('capacityProviderScalingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(guardedValue, (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    instanceRequirements = registerOutput<List<CapacityProviderInstanceRequirement>>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(guardedValue, (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    permissionsConfig = registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderPermissionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [CapacityProvider] resource.
  CapacityProvider.reference(String urn)
    : super(
        'aws:lambda/capacityProvider:CapacityProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    capacityProviderScalingConfigs = registerOutput<List<CapacityProviderCapacityProviderScalingConfig>>('capacityProviderScalingConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(guardedValue, (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>())); });
    instanceRequirements = registerOutput<List<CapacityProviderInstanceRequirement>>('instanceRequirements', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(guardedValue, (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    permissionsConfig = registerOutput<CapacityProviderPermissionsConfig>('permissionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderPermissionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<CapacityProviderTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcConfig = registerOutput<CapacityProviderVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityProviderVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

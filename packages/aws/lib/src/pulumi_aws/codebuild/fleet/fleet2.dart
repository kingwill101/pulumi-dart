import 'package:pulumi/pulumi.dart';
import '../fleet_compute_configuration/fleet_compute_configuration.dart';
import '../fleet_scaling_configuration/fleet_scaling_configuration.dart';
import '../fleet_status/fleet_status.dart';
import '../fleet_vpc_config/fleet_vpc_config2.dart';
import 'fleet_args2.dart';

/// Provides a CodeBuild Fleet Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codebuild.Fleet("test", {
/// baseCapacity: 2,
/// computeType: "BUILD_GENERAL1_SMALL",
/// environmentType: "LINUX_CONTAINER",
/// name: "full-example-codebuild-fleet",
/// overflowBehavior: "QUEUE",
/// scalingConfiguration: {
/// maxCapacity: 5,
/// scalingType: "TARGET_TRACKING_SCALING",
/// targetTrackingScalingConfigs: [{
/// metricType: "FLEET_UTILIZATION_RATE",
/// targetValue: 97.5,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codebuild.Fleet("test",
/// base_capacity=2,
/// compute_type="BUILD_GENERAL1_SMALL",
/// environment_type="LINUX_CONTAINER",
/// name="full-example-codebuild-fleet",
/// overflow_behavior="QUEUE",
/// scaling_configuration={
/// "max_capacity": 5,
/// "scaling_type": "TARGET_TRACKING_SCALING",
/// "target_tracking_scaling_configs": [{
/// "metric_type": "FLEET_UTILIZATION_RATE",
/// "target_value": 97.5,
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.CodeBuild.Fleet("test", new()
/// {
/// BaseCapacity = 2,
/// ComputeType = "BUILD_GENERAL1_SMALL",
/// EnvironmentType = "LINUX_CONTAINER",
/// Name = "full-example-codebuild-fleet",
/// OverflowBehavior = "QUEUE",
/// ScalingConfiguration = new Aws.CodeBuild.Inputs.FleetScalingConfigurationArgs
/// {
/// MaxCapacity = 5,
/// ScalingType = "TARGET_TRACKING_SCALING",
/// TargetTrackingScalingConfigs = new[]
/// {
/// new Aws.CodeBuild.Inputs.FleetScalingConfigurationTargetTrackingScalingConfigArgs
/// {
/// MetricType = "FLEET_UTILIZATION_RATE",
/// TargetValue = 97.5,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codebuild.NewFleet(ctx, "test", &codebuild.FleetArgs{
/// BaseCapacity:     pulumi.Int(2),
/// ComputeType:      pulumi.String("BUILD_GENERAL1_SMALL"),
/// EnvironmentType:  pulumi.String("LINUX_CONTAINER"),
/// Name:             pulumi.String("full-example-codebuild-fleet"),
/// OverflowBehavior: pulumi.String("QUEUE"),
/// ScalingConfiguration: &codebuild.FleetScalingConfigurationArgs{
/// MaxCapacity: pulumi.Int(5),
/// ScalingType: pulumi.String("TARGET_TRACKING_SCALING"),
/// TargetTrackingScalingConfigs: codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArray{
/// &codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArgs{
/// MetricType:  pulumi.String("FLEET_UTILIZATION_RATE"),
/// TargetValue: pulumi.Float64(97.5),
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
/// import com.pulumi.aws.codebuild.Fleet;
/// import com.pulumi.aws.codebuild.FleetArgs;
/// import com.pulumi.aws.codebuild.inputs.FleetScalingConfigurationArgs;
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
/// var test = new Fleet("test", FleetArgs.builder()
/// .baseCapacity(2)
/// .computeType("BUILD_GENERAL1_SMALL")
/// .environmentType("LINUX_CONTAINER")
/// .name("full-example-codebuild-fleet")
/// .overflowBehavior("QUEUE")
/// .scalingConfiguration(FleetScalingConfigurationArgs.builder()
/// .maxCapacity(5)
/// .scalingType("TARGET_TRACKING_SCALING")
/// .targetTrackingScalingConfigs(FleetScalingConfigurationTargetTrackingScalingConfigArgs.builder()
/// .metricType("FLEET_UTILIZATION_RATE")
/// .targetValue(97.5)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:codebuild:Fleet
/// properties:
/// baseCapacity: 2
/// computeType: BUILD_GENERAL1_SMALL
/// environmentType: LINUX_CONTAINER
/// name: full-example-codebuild-fleet
/// overflowBehavior: QUEUE
/// scalingConfiguration:
/// maxCapacity: 5
/// scalingType: TARGET_TRACKING_SCALING
/// targetTrackingScalingConfigs:
/// - metricType: FLEET_UTILIZATION_RATE
/// targetValue: 97.5
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codebuild.Fleet("example", {name: "example-codebuild-fleet"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.Fleet("example", name="example-codebuild-fleet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CodeBuild.Fleet("example", new()
/// {
/// Name = "example-codebuild-fleet",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codebuild.NewFleet(ctx, "example", &codebuild.FleetArgs{
/// Name: pulumi.String("example-codebuild-fleet"),
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
/// import com.pulumi.aws.codebuild.Fleet;
/// import com.pulumi.aws.codebuild.FleetArgs;
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
/// var example = new Fleet("example", FleetArgs.builder()
/// .name("example-codebuild-fleet")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:codebuild:Fleet
/// properties:
/// name: example-codebuild-fleet
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeBuild fleet.
///
///
/// Using `pulumi import`, import CodeBuild Fleet using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/fleet:Fleet name fleet-name
/// ```
class Fleet2 extends CustomResource {
  /// ARN of the Fleet.
  late final Output<String> arn;

  /// Number of machines allocated to the ﬂeet.
  late final Output<int> baseCapacity;

  /// The compute configuration of the compute fleet. This is only required if <span pulumi-lang-nodejs="`computeType`" pulumi-lang-dotnet="`ComputeType`" pulumi-lang-go="`computeType`" pulumi-lang-python="`compute_type`" pulumi-lang-yaml="`computeType`" pulumi-lang-java="`computeType`">`compute_type`</span> is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See <span pulumi-lang-nodejs="`computeConfiguration`" pulumi-lang-dotnet="`ComputeConfiguration`" pulumi-lang-go="`computeConfiguration`" pulumi-lang-python="`compute_configuration`" pulumi-lang-yaml="`computeConfiguration`" pulumi-lang-java="`computeConfiguration`">`compute_configuration`</span> below.
  late final Output<FleetComputeConfiguration?> computeConfiguration;

  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  late final Output<String> computeType;

  /// Creation time of the fleet.
  late final Output<String> created;

  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  late final Output<String> environmentType;

  /// The service role associated with the compute fleet.
  late final Output<String?> fleetServiceRole;

  /// The Amazon Machine Image (AMI) of the compute fleet.
  late final Output<String?> imageId;

  /// Last modification time of the fleet.
  late final Output<String> lastModified;

  /// Fleet name.
  late final Output<String> name;

  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  late final Output<String> overflowBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See <span pulumi-lang-nodejs="`scalingConfiguration`" pulumi-lang-dotnet="`ScalingConfiguration`" pulumi-lang-go="`scalingConfiguration`" pulumi-lang-python="`scaling_configuration`" pulumi-lang-yaml="`scalingConfiguration`" pulumi-lang-java="`scalingConfiguration`">`scaling_configuration`</span> below.
  late final Output<FleetScalingConfiguration?> scalingConfiguration;

  /// Nested attribute containing information about the current status of the fleet.
  late final Output<List<FleetStatus>> statuses;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block. See <span pulumi-lang-nodejs="`vpcConfig`" pulumi-lang-dotnet="`VpcConfig`" pulumi-lang-go="`vpcConfig`" pulumi-lang-python="`vpc_config`" pulumi-lang-yaml="`vpcConfig`" pulumi-lang-java="`vpcConfig`">`vpc_config`</span> below.
  late final Output<List<FleetVpcConfig2>?> vpcConfigs;

  Fleet2(
    String name, {
    FleetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.baseCapacity = Output.createUnknown<int>();
    this.computeConfiguration =
        Output.createUnknown<FleetComputeConfiguration?>();
    this.computeType = Output.createUnknown<String>();
    this.created = Output.createUnknown<String>();
    this.environmentType = Output.createUnknown<String>();
    this.fleetServiceRole = Output.createUnknown<String?>();
    this.imageId = Output.createUnknown<String?>();
    this.lastModified = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.overflowBehavior = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.scalingConfiguration =
        Output.createUnknown<FleetScalingConfiguration?>();
    this.statuses = Output.createUnknown<List<FleetStatus>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcConfigs = Output.createUnknown<List<FleetVpcConfig2>?>();
  }
}

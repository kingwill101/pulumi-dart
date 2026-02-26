import 'package:pulumi/pulumi.dart';
import 'deployment_strategy_args.dart';

/// Provides an AppConfig Deployment Strategy resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.DeploymentStrategy("example", {
/// name: "example-deployment-strategy-tf",
/// description: "Example Deployment Strategy",
/// deploymentDurationInMinutes: 3,
/// finalBakeTimeInMinutes: 4,
/// growthFactor: 10,
/// growthType: "LINEAR",
/// replicateTo: "NONE",
/// tags: {
/// Type: "AppConfig Deployment Strategy",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.DeploymentStrategy("example",
/// name="example-deployment-strategy-tf",
/// description="Example Deployment Strategy",
/// deployment_duration_in_minutes=3,
/// final_bake_time_in_minutes=4,
/// growth_factor=10,
/// growth_type="LINEAR",
/// replicate_to="NONE",
/// tags={
/// "Type": "AppConfig Deployment Strategy",
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
/// var example = new Aws.AppConfig.DeploymentStrategy("example", new()
/// {
/// Name = "example-deployment-strategy-tf",
/// Description = "Example Deployment Strategy",
/// DeploymentDurationInMinutes = 3,
/// FinalBakeTimeInMinutes = 4,
/// GrowthFactor = 10,
/// GrowthType = "LINEAR",
/// ReplicateTo = "NONE",
/// Tags =
/// {
/// { "Type", "AppConfig Deployment Strategy" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appconfig.NewDeploymentStrategy(ctx, "example", &appconfig.DeploymentStrategyArgs{
/// Name:                        pulumi.String("example-deployment-strategy-tf"),
/// Description:                 pulumi.String("Example Deployment Strategy"),
/// DeploymentDurationInMinutes: pulumi.Int(3),
/// FinalBakeTimeInMinutes:      pulumi.Int(4),
/// GrowthFactor:                pulumi.Float64(10),
/// GrowthType:                  pulumi.String("LINEAR"),
/// ReplicateTo:                 pulumi.String("NONE"),
/// Tags: pulumi.StringMap{
/// "Type": pulumi.String("AppConfig Deployment Strategy"),
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
/// import com.pulumi.aws.appconfig.DeploymentStrategy;
/// import com.pulumi.aws.appconfig.DeploymentStrategyArgs;
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
/// var example = new DeploymentStrategy("example", DeploymentStrategyArgs.builder()
/// .name("example-deployment-strategy-tf")
/// .description("Example Deployment Strategy")
/// .deploymentDurationInMinutes(3)
/// .finalBakeTimeInMinutes(4)
/// .growthFactor(10.0)
/// .growthType("LINEAR")
/// .replicateTo("NONE")
/// .tags(Map.of("Type", "AppConfig Deployment Strategy"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appconfig:DeploymentStrategy
/// properties:
/// name: example-deployment-strategy-tf
/// description: Example Deployment Strategy
/// deploymentDurationInMinutes: 3
/// finalBakeTimeInMinutes: 4
/// growthFactor: 10
/// growthType: LINEAR
/// replicateTo: NONE
/// tags:
/// Type: AppConfig Deployment Strategy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Deployment Strategies using their deployment strategy ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/deploymentStrategy:DeploymentStrategy example 11xxxxx
/// ```
class DeploymentStrategy extends CustomResource {
  /// ARN of the AppConfig Deployment Strategy.
  late final Output<String> arn;

  /// Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  late final Output<int> deploymentDurationInMinutes;

  /// Description of the deployment strategy. Can be at most 1024 characters.
  late final Output<String?> description;

  /// Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  late final Output<int?> finalBakeTimeInMinutes;

  /// Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  late final Output<double> growthFactor;

  /// Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  late final Output<String?> growthType;

  /// Name for the deployment strategy. Must be between 1 and 64 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  late final Output<String> replicateTo;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DeploymentStrategy(
    String name, {
    DeploymentStrategyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/deploymentStrategy:DeploymentStrategy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deploymentDurationInMinutes = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.finalBakeTimeInMinutes = Output.createUnknown<int?>();
    this.growthFactor = Output.createUnknown<double>();
    this.growthType = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.replicateTo = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}

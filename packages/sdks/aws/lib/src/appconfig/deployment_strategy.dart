import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_strategy_args.dart';
import 'deployment_strategy_state.dart';

/// Provides an AppConfig Deployment Strategy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.DeploymentStrategy("example", {
///     name: "example-deployment-strategy-tf",
///     description: "Example Deployment Strategy",
///     deploymentDurationInMinutes: 3,
///     finalBakeTimeInMinutes: 4,
///     growthFactor: 10,
///     growthType: "LINEAR",
///     replicateTo: "NONE",
///     tags: {
///         Type: "AppConfig Deployment Strategy",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.DeploymentStrategy("example",
///     name="example-deployment-strategy-tf",
///     description="Example Deployment Strategy",
///     deployment_duration_in_minutes=3,
///     final_bake_time_in_minutes=4,
///     growth_factor=10,
///     growth_type="LINEAR",
///     replicate_to="NONE",
///     tags={
///         "Type": "AppConfig Deployment Strategy",
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
///     var example = new Aws.AppConfig.DeploymentStrategy("example", new()
///     {
///         Name = "example-deployment-strategy-tf",
///         Description = "Example Deployment Strategy",
///         DeploymentDurationInMinutes = 3,
///         FinalBakeTimeInMinutes = 4,
///         GrowthFactor = 10,
///         GrowthType = "LINEAR",
///         ReplicateTo = "NONE",
///         Tags =
///         {
///             { "Type", "AppConfig Deployment Strategy" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.NewDeploymentStrategy(ctx, "example", &appconfig.DeploymentStrategyArgs{
/// 			Name:                        pulumi.String("example-deployment-strategy-tf"),
/// 			Description:                 pulumi.String("Example Deployment Strategy"),
/// 			DeploymentDurationInMinutes: pulumi.Int(3),
/// 			FinalBakeTimeInMinutes:      pulumi.Int(4),
/// 			GrowthFactor:                pulumi.Float64(10),
/// 			GrowthType:                  pulumi.String("LINEAR"),
/// 			ReplicateTo:                 pulumi.String("NONE"),
/// 			Tags: pulumi.StringMap{
/// 				"Type": pulumi.String("AppConfig Deployment Strategy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DeploymentStrategy("example", DeploymentStrategyArgs.builder()
///             .name("example-deployment-strategy-tf")
///             .description("Example Deployment Strategy")
///             .deploymentDurationInMinutes(3)
///             .finalBakeTimeInMinutes(4)
///             .growthFactor(10.0)
///             .growthType("LINEAR")
///             .replicateTo("NONE")
///             .tags(Map.of("Type", "AppConfig Deployment Strategy"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appconfig:DeploymentStrategy
///     properties:
///       name: example-deployment-strategy-tf
///       description: Example Deployment Strategy
///       deploymentDurationInMinutes: 3
///       finalBakeTimeInMinutes: 4
///       growthFactor: 10
///       growthType: LINEAR
///       replicateTo: NONE
///       tags:
///         Type: AppConfig Deployment Strategy
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Deployment Strategies using their deployment strategy ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/deploymentStrategy:DeploymentStrategy example 11xxxxx
/// ```
class DeploymentStrategy extends pulumi.CustomResource {
  /// ARN of the AppConfig Deployment Strategy.
  late final pulumi.Output<String> arn;
  /// Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  late final pulumi.Output<int> deploymentDurationInMinutes;
  /// Description of the deployment strategy. Can be at most 1024 characters.
  late final pulumi.Output<String?> description;
  /// Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  late final pulumi.Output<int?> finalBakeTimeInMinutes;
  /// Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  late final pulumi.Output<double> growthFactor;
  /// Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  late final pulumi.Output<String?> growthType;
  /// Name for the deployment strategy. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  late final pulumi.Output<String> replicateTo;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DeploymentStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentStrategy]. {@macro pulumi_appconfig_deployment_strategy_deployment_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentStrategy(
    String name, {
    DeploymentStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/deploymentStrategy:DeploymentStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deploymentDurationInMinutes = registerOutput<int>('deploymentDurationInMinutes');
    description = registerOutput<String?>('description');
    finalBakeTimeInMinutes = registerOutput<int?>('finalBakeTimeInMinutes');
    growthFactor = registerOutput<double>('growthFactor');
    growthType = registerOutput<String?>('growthType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicateTo = registerOutput<String>('replicateTo');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [DeploymentStrategy] resource's state with the given [name] and [id].
  static DeploymentStrategy get(
    String name,
    pulumi.Input<String> id, {
    DeploymentStrategyState? state,
  }) {
    return DeploymentStrategy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeploymentStrategy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/deploymentStrategy:DeploymentStrategy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deploymentDurationInMinutes = registerOutput<int>('deploymentDurationInMinutes');
    description = registerOutput<String?>('description');
    finalBakeTimeInMinutes = registerOutput<int?>('finalBakeTimeInMinutes');
    growthFactor = registerOutput<double>('growthFactor');
    growthType = registerOutput<String?>('growthType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicateTo = registerOutput<String>('replicateTo');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}

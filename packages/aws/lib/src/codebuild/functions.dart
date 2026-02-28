import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_args.dart';
import 'get_fleet_result.dart';

/// Retrieve information about an CodeBuild Fleet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testFleet = new aws.codebuild.Fleet("test", {
///     baseCapacity: 2,
///     computeType: "BUILD_GENERAL1_SMALL",
///     environmentType: "LINUX_CONTAINER",
///     name: "full-example-codebuild-fleet",
///     overflowBehavior: "QUEUE",
///     scalingConfiguration: {
///         maxCapacity: 5,
///         scalingType: "TARGET_TRACKING_SCALING",
///         targetTrackingScalingConfigs: [{
///             metricType: "FLEET_UTILIZATION_RATE",
///             targetValue: 97.5,
///         }],
///     },
/// });
/// const test = aws.codebuild.getFleetOutput({
///     name: testFleet.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_fleet = aws.codebuild.Fleet("test",
///     base_capacity=2,
///     compute_type="BUILD_GENERAL1_SMALL",
///     environment_type="LINUX_CONTAINER",
///     name="full-example-codebuild-fleet",
///     overflow_behavior="QUEUE",
///     scaling_configuration={
///         "max_capacity": 5,
///         "scaling_type": "TARGET_TRACKING_SCALING",
///         "target_tracking_scaling_configs": [{
///             "metric_type": "FLEET_UTILIZATION_RATE",
///             "target_value": 97.5,
///         }],
///     })
/// test = aws.codebuild.get_fleet_output(name=test_fleet.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testFleet = new Aws.CodeBuild.Fleet("test", new()
///     {
///         BaseCapacity = 2,
///         ComputeType = "BUILD_GENERAL1_SMALL",
///         EnvironmentType = "LINUX_CONTAINER",
///         Name = "full-example-codebuild-fleet",
///         OverflowBehavior = "QUEUE",
///         ScalingConfiguration = new Aws.CodeBuild.Inputs.FleetScalingConfigurationArgs
///         {
///             MaxCapacity = 5,
///             ScalingType = "TARGET_TRACKING_SCALING",
///             TargetTrackingScalingConfigs = new[]
///             {
///                 new Aws.CodeBuild.Inputs.FleetScalingConfigurationTargetTrackingScalingConfigArgs
///                 {
///                     MetricType = "FLEET_UTILIZATION_RATE",
///                     TargetValue = 97.5,
///                 },
///             },
///         },
///     });
///
///     var test = Aws.CodeBuild.GetFleet.Invoke(new()
///     {
///         Name = testFleet.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testFleet, err := codebuild.NewFleet(ctx, "test", &codebuild.FleetArgs{
/// 			BaseCapacity:     pulumi.Int(2),
/// 			ComputeType:      pulumi.String("BUILD_GENERAL1_SMALL"),
/// 			EnvironmentType:  pulumi.String("LINUX_CONTAINER"),
/// 			Name:             pulumi.String("full-example-codebuild-fleet"),
/// 			OverflowBehavior: pulumi.String("QUEUE"),
/// 			ScalingConfiguration: &codebuild.FleetScalingConfigurationArgs{
/// 				MaxCapacity: pulumi.Int(5),
/// 				ScalingType: pulumi.String("TARGET_TRACKING_SCALING"),
/// 				TargetTrackingScalingConfigs: codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArray{
/// 					&codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArgs{
/// 						MetricType:  pulumi.String("FLEET_UTILIZATION_RATE"),
/// 						TargetValue: pulumi.Float64(97.5),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = codebuild.LookupFleetOutput(ctx, codebuild.GetFleetOutputArgs{
/// 			Name: testFleet.Name,
/// 		}, nil)
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
/// import com.pulumi.aws.codebuild.Fleet;
/// import com.pulumi.aws.codebuild.FleetArgs;
/// import com.pulumi.aws.codebuild.inputs.FleetScalingConfigurationArgs;
/// import com.pulumi.aws.codebuild.CodebuildFunctions;
/// import com.pulumi.aws.codebuild.inputs.GetFleetArgs;
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
///         var testFleet = new Fleet("testFleet", FleetArgs.builder()
///             .baseCapacity(2)
///             .computeType("BUILD_GENERAL1_SMALL")
///             .environmentType("LINUX_CONTAINER")
///             .name("full-example-codebuild-fleet")
///             .overflowBehavior("QUEUE")
///             .scalingConfiguration(FleetScalingConfigurationArgs.builder()
///                 .maxCapacity(5)
///                 .scalingType("TARGET_TRACKING_SCALING")
///                 .targetTrackingScalingConfigs(FleetScalingConfigurationTargetTrackingScalingConfigArgs.builder()
///                     .metricType("FLEET_UTILIZATION_RATE")
///                     .targetValue(97.5)
///                     .build())
///                 .build())
///             .build());
///
///         final var test = CodebuildFunctions.getFleet(GetFleetArgs.builder()
///             .name(testFleet.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testFleet:
///     type: aws:codebuild:Fleet
///     name: test
///     properties:
///       baseCapacity: 2
///       computeType: BUILD_GENERAL1_SMALL
///       environmentType: LINUX_CONTAINER
///       name: full-example-codebuild-fleet
///       overflowBehavior: QUEUE
///       scalingConfiguration:
///         maxCapacity: 5
///         scalingType: TARGET_TRACKING_SCALING
///         targetTrackingScalingConfigs:
///           - metricType: FLEET_UTILIZATION_RATE
///             targetValue: 97.5
/// variables:
///   test:
///     fn::invoke:
///       function: aws:codebuild:getFleet
///       arguments:
///         name: ${testFleet.name}
/// ```
///
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.codebuild.getFleet({
///     name: "my-codebuild-fleet-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codebuild.get_fleet(name="my-codebuild-fleet-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CodeBuild.GetFleet.Invoke(new()
///     {
///         Name = "my-codebuild-fleet-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codebuild"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codebuild.LookupFleet(ctx, &codebuild.LookupFleetArgs{
/// 			Name: "my-codebuild-fleet-name",
/// 		}, nil)
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
/// import com.pulumi.aws.codebuild.CodebuildFunctions;
/// import com.pulumi.aws.codebuild.inputs.GetFleetArgs;
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
///         final var example = CodebuildFunctions.getFleet(GetFleetArgs.builder()
///             .name("my-codebuild-fleet-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:codebuild:getFleet
///       arguments:
///         name: my-codebuild-fleet-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_codebuild_get_fleet_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codebuild/getFleet:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}

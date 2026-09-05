import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_compute_configuration.dart';
import 'fleet_scaling_configuration.dart';
import 'fleet_state.dart';
import 'fleet_status.dart';
import 'fleet_vpc_config.dart';

/// Provides a CodeBuild Fleet Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codebuild.Fleet("test", {
///     scalingConfiguration: {
///         targetTrackingScalingConfigs: [{
///             metricType: "FLEET_UTILIZATION_RATE",
///             targetValue: 97.5,
///         }],
///         maxCapacity: 5,
///         scalingType: "TARGET_TRACKING_SCALING",
///     },
///     baseCapacity: 2,
///     computeType: "BUILD_GENERAL1_SMALL",
///     environmentType: "LINUX_CONTAINER",
///     name: "full-example-codebuild-fleet",
///     overflowBehavior: "QUEUE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codebuild.Fleet("test",
///     scaling_configuration={
///         "target_tracking_scaling_configs": [{
///             "metric_type": "FLEET_UTILIZATION_RATE",
///             "target_value": 97.5,
///         }],
///         "max_capacity": 5,
///         "scaling_type": "TARGET_TRACKING_SCALING",
///     },
///     base_capacity=2,
///     compute_type="BUILD_GENERAL1_SMALL",
///     environment_type="LINUX_CONTAINER",
///     name="full-example-codebuild-fleet",
///     overflow_behavior="QUEUE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CodeBuild.Fleet("test", new()
///     {
///         ScalingConfiguration = new Aws.CodeBuild.Inputs.FleetScalingConfigurationArgs
///         {
///             TargetTrackingScalingConfigs = new[]
///             {
///                 new Aws.CodeBuild.Inputs.FleetScalingConfigurationTargetTrackingScalingConfigArgs
///                 {
///                     MetricType = "FLEET_UTILIZATION_RATE",
///                     TargetValue = 97.5,
///                 },
///             },
///             MaxCapacity = 5,
///             ScalingType = "TARGET_TRACKING_SCALING",
///         },
///         BaseCapacity = 2,
///         ComputeType = "BUILD_GENERAL1_SMALL",
///         EnvironmentType = "LINUX_CONTAINER",
///         Name = "full-example-codebuild-fleet",
///         OverflowBehavior = "QUEUE",
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
/// 		_, err := codebuild.NewFleet(ctx, "test", &codebuild.FleetArgs{
/// 			ScalingConfiguration: &codebuild.FleetScalingConfigurationArgs{
/// 				TargetTrackingScalingConfigs: codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArray{
/// 					&codebuild.FleetScalingConfigurationTargetTrackingScalingConfigArgs{
/// 						MetricType:  pulumi.String("FLEET_UTILIZATION_RATE"),
/// 						TargetValue: pulumi.Float64(97.5),
/// 					},
/// 				},
/// 				MaxCapacity: pulumi.Int(5),
/// 				ScalingType: pulumi.String("TARGET_TRACKING_SCALING"),
/// 			},
/// 			BaseCapacity:     pulumi.Int(2),
/// 			ComputeType:      pulumi.String("BUILD_GENERAL1_SMALL"),
/// 			EnvironmentType:  pulumi.String("LINUX_CONTAINER"),
/// 			Name:             pulumi.String("full-example-codebuild-fleet"),
/// 			OverflowBehavior: pulumi.String("QUEUE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// resource "aws_codebuild_fleet" "test" {
///   scaling_configuration = {
///     target_tracking_scaling_configs = [{
///       "metricType"  = "FLEET_UTILIZATION_RATE"
///       "targetValue" = 97.5
///     }]
///     max_capacity = 5
///     scaling_type = "TARGET_TRACKING_SCALING"
///   }
///   base_capacity     = 2
///   compute_type      = "BUILD_GENERAL1_SMALL"
///   environment_type  = "LINUX_CONTAINER"
///   name              = "full-example-codebuild-fleet"
///   overflow_behavior = "QUEUE"
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
/// import com.pulumi.aws.codebuild.inputs.FleetScalingConfigurationTargetTrackingScalingConfigArgs;
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
///         var test = new Fleet("test", FleetArgs.builder()
///             .scalingConfiguration(FleetScalingConfigurationArgs.builder()
///                 .targetTrackingScalingConfigs(FleetScalingConfigurationTargetTrackingScalingConfigArgs.builder()
///                     .metricType("FLEET_UTILIZATION_RATE")
///                     .targetValue(97.5)
///                     .build())
///                 .maxCapacity(5)
///                 .scalingType("TARGET_TRACKING_SCALING")
///                 .build())
///             .baseCapacity(2)
///             .computeType("BUILD_GENERAL1_SMALL")
///             .environmentType("LINUX_CONTAINER")
///             .name("full-example-codebuild-fleet")
///             .overflowBehavior("QUEUE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:codebuild:Fleet
///     properties:
///       scalingConfiguration:
///         targetTrackingScalingConfigs:
///           - metricType: FLEET_UTILIZATION_RATE
///             targetValue: 97.5
///         maxCapacity: 5
///         scalingType: TARGET_TRACKING_SCALING
///       baseCapacity: 2
///       computeType: BUILD_GENERAL1_SMALL
///       environmentType: LINUX_CONTAINER
///       name: full-example-codebuild-fleet
///       overflowBehavior: QUEUE
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
///     var example = new Aws.CodeBuild.Fleet("example", new()
///     {
///         Name = "example-codebuild-fleet",
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
/// 		_, err := codebuild.NewFleet(ctx, "example", &codebuild.FleetArgs{
/// 			Name: pulumi.String("example-codebuild-fleet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// resource "aws_codebuild_fleet" "example" {
///   name = "example-codebuild-fleet"
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
///         var example = new Fleet("example", FleetArgs.builder()
///             .name("example-codebuild-fleet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codebuild:Fleet
///     properties:
///       name: example-codebuild-fleet
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the CodeBuild fleet.
///
///
/// Using `pulumi import`, import CodeBuild Fleet using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/fleet:Fleet name fleet-name
/// ```
class Fleet extends pulumi.CustomResource {
  /// ARN of the Fleet.
  late final pulumi.Output<String> arn;
  /// Number of machines allocated to the ﬂeet.
  late final pulumi.Output<int> baseCapacity;
  /// The compute configuration of the compute fleet. This is only required if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `computeConfiguration` below.
  late final pulumi.Output<FleetComputeConfiguration?> computeConfiguration;
  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  late final pulumi.Output<String> computeType;
  /// Creation time of the fleet.
  late final pulumi.Output<String> created;
  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> environmentType;
  /// The service role associated with the compute fleet.
  late final pulumi.Output<String?> fleetServiceRole;
  /// AMI of the compute fleet.
  late final pulumi.Output<String?> imageId;
  /// Last modification time of the fleet.
  late final pulumi.Output<String> lastModified;
  /// Fleet name.
  late final pulumi.Output<String> name;
  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  late final pulumi.Output<String> overflowBehavior;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scalingConfiguration` below.
  late final pulumi.Output<FleetScalingConfiguration?> scalingConfiguration;
  /// Nested attribute containing information about the current status of the fleet.
  late final pulumi.Output<List<FleetStatus>> statuses;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block. See `vpcConfig` below.
  late final pulumi.Output<List<FleetVpcConfig>?> vpcConfigs;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_codebuild_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    baseCapacity = registerOutput<int>('baseCapacity');
    computeConfiguration = registerOutput<FleetComputeConfiguration?>('computeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetComputeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeType = registerOutput<String>('computeType');
    created = registerOutput<String>('created');
    environmentType = registerOutput<String>('environmentType');
    fleetServiceRole = registerOutput<String?>('fleetServiceRole');
    imageId = registerOutput<String?>('imageId');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    overflowBehavior = registerOutput<String>('overflowBehavior');
    region = registerOutput<String>('region');
    scalingConfiguration = registerOutput<FleetScalingConfiguration?>('scalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<FleetStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetStatus>(guardedValue, (value) => FleetStatus.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<FleetVpcConfig>?>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetVpcConfig>(guardedValue, (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Fleet] resource's state with the given [name] and [id].
  static Fleet get(
    String name,
    pulumi.Input<String> id, {
    FleetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Fleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Fleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    baseCapacity = registerOutput<int>('baseCapacity');
    computeConfiguration = registerOutput<FleetComputeConfiguration?>('computeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetComputeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeType = registerOutput<String>('computeType');
    created = registerOutput<String>('created');
    environmentType = registerOutput<String>('environmentType');
    fleetServiceRole = registerOutput<String?>('fleetServiceRole');
    imageId = registerOutput<String?>('imageId');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    overflowBehavior = registerOutput<String>('overflowBehavior');
    region = registerOutput<String>('region');
    scalingConfiguration = registerOutput<FleetScalingConfiguration?>('scalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<FleetStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetStatus>(guardedValue, (value) => FleetStatus.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<FleetVpcConfig>?>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetVpcConfig>(guardedValue, (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Fleet] resource.
  Fleet.reference(String urn)
    : super(
        'aws:codebuild/fleet:Fleet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    baseCapacity = registerOutput<int>('baseCapacity');
    computeConfiguration = registerOutput<FleetComputeConfiguration?>('computeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetComputeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeType = registerOutput<String>('computeType');
    created = registerOutput<String>('created');
    environmentType = registerOutput<String>('environmentType');
    fleetServiceRole = registerOutput<String?>('fleetServiceRole');
    imageId = registerOutput<String?>('imageId');
    lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    overflowBehavior = registerOutput<String>('overflowBehavior');
    region = registerOutput<String>('region');
    scalingConfiguration = registerOutput<FleetScalingConfiguration?>('scalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    statuses = registerOutput<List<FleetStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetStatus>(guardedValue, (value) => FleetStatus.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<FleetVpcConfig>?>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetVpcConfig>(guardedValue, (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }
}

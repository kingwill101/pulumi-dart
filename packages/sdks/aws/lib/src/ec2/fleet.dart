import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_args.dart';
import 'fleet_fleet_instance_set.dart';
import 'fleet_launch_template_config.dart';
import 'fleet_on_demand_options.dart';
import 'fleet_spot_options.dart';
import 'fleet_state.dart';
import 'fleet_target_capacity_specification.dart';

/// Provides a resource to manage EC2 Fleets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Fleet("example", {
///     targetCapacitySpecification: {
///         defaultTargetCapacityType: "spot",
///         totalTargetCapacity: 5,
///     },
///     launchTemplateConfigs: [{
///         launchTemplateSpecification: {
///             launchTemplateId: exampleAwsLaunchTemplate.id,
///             version: exampleAwsLaunchTemplate.latestVersion,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Fleet("example",
///     target_capacity_specification={
///         "default_target_capacity_type": "spot",
///         "total_target_capacity": 5,
///     },
///     launch_template_configs=[{
///         "launch_template_specification": {
///             "launch_template_id": example_aws_launch_template["id"],
///             "version": example_aws_launch_template["latestVersion"],
///         },
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
///     var example = new Aws.Ec2.Fleet("example", new()
///     {
///         TargetCapacitySpecification = new Aws.Ec2.Inputs.FleetTargetCapacitySpecificationArgs
///         {
///             DefaultTargetCapacityType = "spot",
///             TotalTargetCapacity = 5,
///         },
///         LaunchTemplateConfigs = new[]
///         {
///             new Aws.Ec2.Inputs.FleetLaunchTemplateConfigArgs
///             {
///                 LaunchTemplateSpecification = new Aws.Ec2.Inputs.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs
///                 {
///                     LaunchTemplateId = exampleAwsLaunchTemplate.Id,
///                     Version = exampleAwsLaunchTemplate.LatestVersion,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewFleet(ctx, "example", &ec2.FleetArgs{
/// 			TargetCapacitySpecification: &ec2.FleetTargetCapacitySpecificationArgs{
/// 				DefaultTargetCapacityType: pulumi.String("spot"),
/// 				TotalTargetCapacity:       pulumi.Int(5),
/// 			},
/// 			LaunchTemplateConfigs: ec2.FleetLaunchTemplateConfigArray{
/// 				&ec2.FleetLaunchTemplateConfigArgs{
/// 					LaunchTemplateSpecification: &ec2.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs{
/// 						LaunchTemplateId: pulumi.Any(exampleAwsLaunchTemplate.Id),
/// 						Version:          pulumi.Any(exampleAwsLaunchTemplate.LatestVersion),
/// 					},
/// 				},
/// 			},
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
/// resource "aws_ec2_fleet" "example" {
///   target_capacity_specification = {
///     default_target_capacity_type = "spot"
///     total_target_capacity        = 5
///   }
///   launch_template_configs {
///     launch_template_specification = {
///       launch_template_id = exampleAwsLaunchTemplate.id
///       version            = exampleAwsLaunchTemplate.latestVersion
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Fleet;
/// import com.pulumi.aws.ec2.FleetArgs;
/// import com.pulumi.aws.ec2.inputs.FleetTargetCapacitySpecificationArgs;
/// import com.pulumi.aws.ec2.inputs.FleetLaunchTemplateConfigArgs;
/// import com.pulumi.aws.ec2.inputs.FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs;
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
///             .targetCapacitySpecification(FleetTargetCapacitySpecificationArgs.builder()
///                 .defaultTargetCapacityType("spot")
///                 .totalTargetCapacity(5)
///                 .build())
///             .launchTemplateConfigs(FleetLaunchTemplateConfigArgs.builder()
///                 .launchTemplateSpecification(FleetLaunchTemplateConfigLaunchTemplateSpecificationArgs.builder()
///                     .launchTemplateId(exampleAwsLaunchTemplate.id())
///                     .version(exampleAwsLaunchTemplate.latestVersion())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Fleet
///     properties:
///       targetCapacitySpecification:
///         defaultTargetCapacityType: spot
///         totalTargetCapacity: 5
///       launchTemplateConfigs:
///         - launchTemplateSpecification:
///             launchTemplateId: ${exampleAwsLaunchTemplate.id}
///             version: ${exampleAwsLaunchTemplate.latestVersion}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Fleet` using the Fleet identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/fleet:Fleet example fleet-b9b55d27-c5fc-41ac-a6f3-48fcc91f080c
/// ```
class Fleet extends pulumi.CustomResource {
  /// The ARN of the fleet
  late final pulumi.Output<String> arn;
  /// Reserved.
  late final pulumi.Output<String?> context;
  /// Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, `termination`. Defaults to `termination`. Supported only for fleets of type `maintain`.
  late final pulumi.Output<String?> excessCapacityTerminationPolicy;
  /// Information about the instances that were launched by the fleet. Available only when `type` is set to `instant`.
  late final pulumi.Output<List<FleetFleetInstanceSet>> fleetInstanceSets;
  /// The state of the EC2 Fleet.
  late final pulumi.Output<String> fleetState;
  /// The number of units fulfilled by this request compared to the set target capacity.
  late final pulumi.Output<double> fulfilledCapacity;
  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  late final pulumi.Output<double> fulfilledOnDemandCapacity;
  /// Nested argument containing EC2 Launch Template configurations. Defined below.
  late final pulumi.Output<List<FleetLaunchTemplateConfig>> launchTemplateConfigs;
  /// Nested argument containing On-Demand configurations. Defined below.
  late final pulumi.Output<FleetOnDemandOptions?> onDemandOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether EC2 Fleet should replace unhealthy instances. Defaults to `false`. Supported only for fleets of type `maintain`.
  late final pulumi.Output<bool?> replaceUnhealthyInstances;
  /// Nested argument containing Spot configurations. Defined below.
  late final pulumi.Output<FleetSpotOptions?> spotOptions;
  /// Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Nested argument containing target capacity configurations. Defined below.
  late final pulumi.Output<FleetTargetCapacitySpecification> targetCapacitySpecification;
  /// Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  late final pulumi.Output<bool?> terminateInstances;
  /// Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  late final pulumi.Output<bool?> terminateInstancesWithExpiration;
  /// The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  late final pulumi.Output<String?> type;
  /// The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final pulumi.Output<String?> validFrom;
  /// The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  late final pulumi.Output<String?> validUntil;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_ec2_fleet_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(
    String name, {
    FleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetInstanceSets = registerOutput<List<FleetFleetInstanceSet>>('fleetInstanceSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetFleetInstanceSet>(guardedValue, (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>())); });
    fleetState = registerOutput<String>('fleetState');
    fulfilledCapacity = registerOutput<double>('fulfilledCapacity');
    fulfilledOnDemandCapacity = registerOutput<double>('fulfilledOnDemandCapacity');
    launchTemplateConfigs = registerOutput<List<FleetLaunchTemplateConfig>>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetLaunchTemplateConfig>(guardedValue, (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandOptions = registerOutput<FleetOnDemandOptions?>('onDemandOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetOnDemandOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotOptions = registerOutput<FleetSpotOptions?>('spotOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetSpotOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacitySpecification = registerOutput<FleetTargetCapacitySpecification>('targetCapacitySpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetTargetCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminateInstances = registerOutput<bool?>('terminateInstances');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    type = registerOutput<String?>('type');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
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
          'aws:ec2/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetInstanceSets = registerOutput<List<FleetFleetInstanceSet>>('fleetInstanceSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetFleetInstanceSet>(guardedValue, (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>())); });
    fleetState = registerOutput<String>('fleetState');
    fulfilledCapacity = registerOutput<double>('fulfilledCapacity');
    fulfilledOnDemandCapacity = registerOutput<double>('fulfilledOnDemandCapacity');
    launchTemplateConfigs = registerOutput<List<FleetLaunchTemplateConfig>>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetLaunchTemplateConfig>(guardedValue, (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandOptions = registerOutput<FleetOnDemandOptions?>('onDemandOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetOnDemandOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotOptions = registerOutput<FleetSpotOptions?>('spotOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetSpotOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacitySpecification = registerOutput<FleetTargetCapacitySpecification>('targetCapacitySpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetTargetCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminateInstances = registerOutput<bool?>('terminateInstances');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    type = registerOutput<String?>('type');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
  }

  /// Creates a typed reference to an existing [Fleet] resource.
  Fleet.reference(String urn)
    : super(
        'aws:ec2/fleet:Fleet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    context = registerOutput<String?>('context');
    excessCapacityTerminationPolicy = registerOutput<String?>('excessCapacityTerminationPolicy');
    fleetInstanceSets = registerOutput<List<FleetFleetInstanceSet>>('fleetInstanceSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetFleetInstanceSet>(guardedValue, (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>())); });
    fleetState = registerOutput<String>('fleetState');
    fulfilledCapacity = registerOutput<double>('fulfilledCapacity');
    fulfilledOnDemandCapacity = registerOutput<double>('fulfilledOnDemandCapacity');
    launchTemplateConfigs = registerOutput<List<FleetLaunchTemplateConfig>>('launchTemplateConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetLaunchTemplateConfig>(guardedValue, (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())); });
    onDemandOptions = registerOutput<FleetOnDemandOptions?>('onDemandOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetOnDemandOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    replaceUnhealthyInstances = registerOutput<bool?>('replaceUnhealthyInstances');
    spotOptions = registerOutput<FleetSpotOptions?>('spotOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetSpotOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetCapacitySpecification = registerOutput<FleetTargetCapacitySpecification>('targetCapacitySpecification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FleetTargetCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terminateInstances = registerOutput<bool?>('terminateInstances');
    terminateInstancesWithExpiration = registerOutput<bool?>('terminateInstancesWithExpiration');
    type = registerOutput<String?>('type');
    validFrom = registerOutput<String?>('validFrom');
    validUntil = registerOutput<String?>('validUntil');
  }
}

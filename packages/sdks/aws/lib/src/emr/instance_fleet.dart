import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_args.dart';
import 'instance_fleet_instance_type_config.dart';
import 'instance_fleet_launch_specifications.dart';
import 'instance_fleet_state.dart';

/// Provides an Elastic MapReduce Cluster Instance Fleet configuration.
/// See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/emr/) for more information.
///
/// &gt; **NOTE:** At this time, Instance Fleets cannot be destroyed through the API nor
/// web interface. Instance Fleets are destroyed when the EMR Cluster is destroyed.
/// the provider will resize any Instance Fleet to zero when destroying the resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const task = new aws.emr.InstanceFleet("task", {
///     launchSpecifications: {
///         spotSpecifications: [{
///             allocationStrategy: "capacity-optimized",
///             blockDurationMinutes: 0,
///             timeoutAction: "TERMINATE_CLUSTER",
///             timeoutDurationMinutes: 10,
///         }],
///     },
///     instanceTypeConfigs: [
///         {
///             ebsConfigs: [{
///                 size: 100,
///                 type: "gp2",
///                 volumesPerInstance: 1,
///             }],
///             bidPriceAsPercentageOfOnDemandPrice: 100,
///             instanceType: "m4.xlarge",
///             weightedCapacity: 1,
///         },
///         {
///             ebsConfigs: [{
///                 size: 100,
///                 type: "gp2",
///                 volumesPerInstance: 1,
///             }],
///             bidPriceAsPercentageOfOnDemandPrice: 100,
///             instanceType: "m4.2xlarge",
///             weightedCapacity: 2,
///         },
///     ],
///     clusterId: cluster.id,
///     name: "task fleet",
///     targetOnDemandCapacity: 1,
///     targetSpotCapacity: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// task = aws.emr.InstanceFleet("task",
///     launch_specifications={
///         "spot_specifications": [{
///             "allocation_strategy": "capacity-optimized",
///             "block_duration_minutes": 0,
///             "timeout_action": "TERMINATE_CLUSTER",
///             "timeout_duration_minutes": 10,
///         }],
///     },
///     instance_type_configs=[
///         {
///             "ebs_configs": [{
///                 "size": 100,
///                 "type": "gp2",
///                 "volumes_per_instance": 1,
///             }],
///             "bid_price_as_percentage_of_on_demand_price": float(100),
///             "instance_type": "m4.xlarge",
///             "weighted_capacity": 1,
///         },
///         {
///             "ebs_configs": [{
///                 "size": 100,
///                 "type": "gp2",
///                 "volumes_per_instance": 1,
///             }],
///             "bid_price_as_percentage_of_on_demand_price": float(100),
///             "instance_type": "m4.2xlarge",
///             "weighted_capacity": 2,
///         },
///     ],
///     cluster_id=cluster["id"],
///     name="task fleet",
///     target_on_demand_capacity=1,
///     target_spot_capacity=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = new Aws.Emr.InstanceFleet("task", new()
///     {
///         LaunchSpecifications = new Aws.Emr.Inputs.InstanceFleetLaunchSpecificationsArgs
///         {
///             SpotSpecifications = new[]
///             {
///                 new Aws.Emr.Inputs.InstanceFleetLaunchSpecificationsSpotSpecificationArgs
///                 {
///                     AllocationStrategy = "capacity-optimized",
///                     BlockDurationMinutes = 0,
///                     TimeoutAction = "TERMINATE_CLUSTER",
///                     TimeoutDurationMinutes = 10,
///                 },
///             },
///         },
///         InstanceTypeConfigs = new[]
///         {
///             new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigArgs
///             {
///                 EbsConfigs = new[]
///                 {
///                     new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs
///                     {
///                         Size = 100,
///                         Type = "gp2",
///                         VolumesPerInstance = 1,
///                     },
///                 },
///                 BidPriceAsPercentageOfOnDemandPrice = 100,
///                 InstanceType = "m4.xlarge",
///                 WeightedCapacity = 1,
///             },
///             new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigArgs
///             {
///                 EbsConfigs = new[]
///                 {
///                     new Aws.Emr.Inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs
///                     {
///                         Size = 100,
///                         Type = "gp2",
///                         VolumesPerInstance = 1,
///                     },
///                 },
///                 BidPriceAsPercentageOfOnDemandPrice = 100,
///                 InstanceType = "m4.2xlarge",
///                 WeightedCapacity = 2,
///             },
///         },
///         ClusterId = cluster.Id,
///         Name = "task fleet",
///         TargetOnDemandCapacity = 1,
///         TargetSpotCapacity = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emr.NewInstanceFleet(ctx, "task", &emr.InstanceFleetArgs{
/// 			LaunchSpecifications: &emr.InstanceFleetLaunchSpecificationsArgs{
/// 				SpotSpecifications: emr.InstanceFleetLaunchSpecificationsSpotSpecificationArray{
/// 					&emr.InstanceFleetLaunchSpecificationsSpotSpecificationArgs{
/// 						AllocationStrategy:     pulumi.String("capacity-optimized"),
/// 						BlockDurationMinutes:   pulumi.Int(0),
/// 						TimeoutAction:          pulumi.String("TERMINATE_CLUSTER"),
/// 						TimeoutDurationMinutes: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			InstanceTypeConfigs: emr.InstanceFleetInstanceTypeConfigArray{
/// 				&emr.InstanceFleetInstanceTypeConfigArgs{
/// 					EbsConfigs: emr.InstanceFleetInstanceTypeConfigEbsConfigArray{
/// 						&emr.InstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 							Size:               pulumi.Int(100),
/// 							Type:               pulumi.String("gp2"),
/// 							VolumesPerInstance: pulumi.Int(1),
/// 						},
/// 					},
/// 					BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 					InstanceType:                        pulumi.String("m4.xlarge"),
/// 					WeightedCapacity:                    pulumi.Int(1),
/// 				},
/// 				&emr.InstanceFleetInstanceTypeConfigArgs{
/// 					EbsConfigs: emr.InstanceFleetInstanceTypeConfigEbsConfigArray{
/// 						&emr.InstanceFleetInstanceTypeConfigEbsConfigArgs{
/// 							Size:               pulumi.Int(100),
/// 							Type:               pulumi.String("gp2"),
/// 							VolumesPerInstance: pulumi.Int(1),
/// 						},
/// 					},
/// 					BidPriceAsPercentageOfOnDemandPrice: pulumi.Float64(100),
/// 					InstanceType:                        pulumi.String("m4.2xlarge"),
/// 					WeightedCapacity:                    pulumi.Int(2),
/// 				},
/// 			},
/// 			ClusterId:              pulumi.Any(cluster.Id),
/// 			Name:                   pulumi.String("task fleet"),
/// 			TargetOnDemandCapacity: pulumi.Int(1),
/// 			TargetSpotCapacity:     pulumi.Int(1),
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
/// resource "aws_emr_instancefleet" "task" {
///   launch_specifications = {
///     spot_specifications = [{
///       "allocationStrategy"     = "capacity-optimized"
///       "blockDurationMinutes"   = 0
///       "timeoutAction"          = "TERMINATE_CLUSTER"
///       "timeoutDurationMinutes" = 10
///     }]
///   }
///   instance_type_configs {
///     ebs_configs {
///       size                 = 100
///       type                 = "gp2"
///       volumes_per_instance = 1
///     }
///     bid_price_as_percentage_of_on_demand_price = 100
///     instance_type                              = "m4.xlarge"
///     weighted_capacity                          = 1
///   }
///   instance_type_configs {
///     ebs_configs {
///       size                 = 100
///       type                 = "gp2"
///       volumes_per_instance = 1
///     }
///     bid_price_as_percentage_of_on_demand_price = 100
///     instance_type                              = "m4.2xlarge"
///     weighted_capacity                          = 2
///   }
///   cluster_id                = cluster.id
///   name                      = "task fleet"
///   target_on_demand_capacity = 1
///   target_spot_capacity      = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.InstanceFleet;
/// import com.pulumi.aws.emr.InstanceFleetArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetLaunchSpecificationsArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetLaunchSpecificationsSpotSpecificationArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetInstanceTypeConfigArgs;
/// import com.pulumi.aws.emr.inputs.InstanceFleetInstanceTypeConfigEbsConfigArgs;
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
///         var task = new InstanceFleet("task", InstanceFleetArgs.builder()
///             .launchSpecifications(InstanceFleetLaunchSpecificationsArgs.builder()
///                 .spotSpecifications(InstanceFleetLaunchSpecificationsSpotSpecificationArgs.builder()
///                     .allocationStrategy("capacity-optimized")
///                     .blockDurationMinutes(0)
///                     .timeoutAction("TERMINATE_CLUSTER")
///                     .timeoutDurationMinutes(10)
///                     .build())
///                 .build())
///             .instanceTypeConfigs(
///                 InstanceFleetInstanceTypeConfigArgs.builder()
///                     .ebsConfigs(InstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                         .size(100)
///                         .type("gp2")
///                         .volumesPerInstance(1)
///                         .build())
///                     .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                     .instanceType("m4.xlarge")
///                     .weightedCapacity(1)
///                     .build(),
///                 InstanceFleetInstanceTypeConfigArgs.builder()
///                     .ebsConfigs(InstanceFleetInstanceTypeConfigEbsConfigArgs.builder()
///                         .size(100)
///                         .type("gp2")
///                         .volumesPerInstance(1)
///                         .build())
///                     .bidPriceAsPercentageOfOnDemandPrice(100.0)
///                     .instanceType("m4.2xlarge")
///                     .weightedCapacity(2)
///                     .build())
///             .clusterId(cluster.id())
///             .name("task fleet")
///             .targetOnDemandCapacity(1)
///             .targetSpotCapacity(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   task:
///     type: aws:emr:InstanceFleet
///     properties:
///       launchSpecifications:
///         spotSpecifications:
///           - allocationStrategy: capacity-optimized
///             blockDurationMinutes: 0
///             timeoutAction: TERMINATE_CLUSTER
///             timeoutDurationMinutes: 10
///       instanceTypeConfigs:
///         - ebsConfigs:
///             - size: 100
///               type: gp2
///               volumesPerInstance: 1
///           bidPriceAsPercentageOfOnDemandPrice: 100
///           instanceType: m4.xlarge
///           weightedCapacity: 1
///         - ebsConfigs:
///             - size: 100
///               type: gp2
///               volumesPerInstance: 1
///           bidPriceAsPercentageOfOnDemandPrice: 100
///           instanceType: m4.2xlarge
///           weightedCapacity: 2
///       clusterId: ${cluster.id}
///       name: task fleet
///       targetOnDemandCapacity: 1
///       targetSpotCapacity: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Instance Fleet using the EMR Cluster identifier and Instance Fleet identifier separated by a forward slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:emr/instanceFleet:InstanceFleet example j-123456ABCDEF/if-15EK4O09RZLNR
/// ```
class InstanceFleet extends pulumi.CustomResource {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;
  /// Configuration block for instance fleet
  late final pulumi.Output<List<InstanceFleetInstanceTypeConfig>?> instanceTypeConfigs;
  /// Configuration block for launch specification
  late final pulumi.Output<InstanceFleetLaunchSpecifications?> launchSpecifications;
  /// Friendly name given to the instance fleet.
  late final pulumi.Output<String> name;
  /// The number of On-Demand units that have been provisioned for the instance
  /// fleet to fulfill TargetOnDemandCapacity. This provisioned capacity might be less than or greater than TargetOnDemandCapacity.
  late final pulumi.Output<int> provisionedOnDemandCapacity;
  /// The number of Spot units that have been provisioned for this instance fleet
  /// to fulfill TargetSpotCapacity. This provisioned capacity might be less than or greater than TargetSpotCapacity.
  late final pulumi.Output<int> provisionedSpotCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  late final pulumi.Output<int?> targetOnDemandCapacity;
  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  late final pulumi.Output<int?> targetSpotCapacity;

  /// Creates a new [InstanceFleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceFleet]. {@macro pulumi_emr_instance_fleet_instance_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceFleet(
    String name, {
    InstanceFleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/instanceFleet:InstanceFleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    clusterId = registerOutput<String>('clusterId');
    instanceTypeConfigs = registerOutput<List<InstanceFleetInstanceTypeConfig>?>('instanceTypeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(guardedValue, (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>())); });
    launchSpecifications = registerOutput<InstanceFleetLaunchSpecifications?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisionedOnDemandCapacity = registerOutput<int>('provisionedOnDemandCapacity');
    provisionedSpotCapacity = registerOutput<int>('provisionedSpotCapacity');
    region = registerOutput<String>('region');
    targetOnDemandCapacity = registerOutput<int?>('targetOnDemandCapacity');
    targetSpotCapacity = registerOutput<int?>('targetSpotCapacity');
  }

  /// Gets an existing [InstanceFleet] resource's state with the given [name] and [id].
  static InstanceFleet get(
    String name,
    pulumi.Input<String> id, {
    InstanceFleetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceFleet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceFleet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/instanceFleet:InstanceFleet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    instanceTypeConfigs = registerOutput<List<InstanceFleetInstanceTypeConfig>?>('instanceTypeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(guardedValue, (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>())); });
    launchSpecifications = registerOutput<InstanceFleetLaunchSpecifications?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisionedOnDemandCapacity = registerOutput<int>('provisionedOnDemandCapacity');
    provisionedSpotCapacity = registerOutput<int>('provisionedSpotCapacity');
    region = registerOutput<String>('region');
    targetOnDemandCapacity = registerOutput<int?>('targetOnDemandCapacity');
    targetSpotCapacity = registerOutput<int?>('targetSpotCapacity');
  }

  /// Creates a typed reference to an existing [InstanceFleet] resource.
  InstanceFleet.reference(String urn)
    : super(
        'aws:emr/instanceFleet:InstanceFleet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clusterId = registerOutput<String>('clusterId');
    instanceTypeConfigs = registerOutput<List<InstanceFleetInstanceTypeConfig>?>('instanceTypeConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(guardedValue, (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>())); });
    launchSpecifications = registerOutput<InstanceFleetLaunchSpecifications?>('launchSpecifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    provisionedOnDemandCapacity = registerOutput<int>('provisionedOnDemandCapacity');
    provisionedSpotCapacity = registerOutput<int>('provisionedSpotCapacity');
    region = registerOutput<String>('region');
    targetOnDemandCapacity = registerOutput<int?>('targetOnDemandCapacity');
    targetSpotCapacity = registerOutput<int?>('targetSpotCapacity');
  }
}

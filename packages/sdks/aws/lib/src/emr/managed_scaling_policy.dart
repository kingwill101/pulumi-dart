import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_scaling_policy_args.dart';
import 'managed_scaling_policy_compute_limit.dart';
import 'managed_scaling_policy_state.dart';

/// Provides a Managed Scaling policy for EMR Cluster. With Amazon EMR versions 5.30.0 and later (except for Amazon EMR 6.0.0), you can enable EMR managed scaling to automatically increase or decrease the number of instances or units in your cluster based on workload. See [Using EMR Managed Scaling in Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-scaling.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sample = new aws.emr.Cluster("sample", {
///     masterInstanceGroup: {
///         instanceType: "m4.large",
///     },
///     coreInstanceGroup: {
///         instanceType: "c4.large",
///     },
///     name: "emr-sample-cluster",
///     releaseLabel: "emr-5.30.0",
/// });
/// const samplepolicy = new aws.emr.ManagedScalingPolicy("samplepolicy", {
///     computeLimits: [{
///         unitType: "Instances",
///         minimumCapacityUnits: 2,
///         maximumCapacityUnits: 10,
///         maximumOndemandCapacityUnits: 2,
///         maximumCoreCapacityUnits: 10,
///     }],
///     clusterId: sample.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sample = aws.emr.Cluster("sample",
///     master_instance_group={
///         "instance_type": "m4.large",
///     },
///     core_instance_group={
///         "instance_type": "c4.large",
///     },
///     name="emr-sample-cluster",
///     release_label="emr-5.30.0")
/// samplepolicy = aws.emr.ManagedScalingPolicy("samplepolicy",
///     compute_limits=[{
///         "unit_type": "Instances",
///         "minimum_capacity_units": 2,
///         "maximum_capacity_units": 10,
///         "maximum_ondemand_capacity_units": 2,
///         "maximum_core_capacity_units": 10,
///     }],
///     cluster_id=sample.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sample = new Aws.Emr.Cluster("sample", new()
///     {
///         MasterInstanceGroup = new Aws.Emr.Inputs.ClusterMasterInstanceGroupArgs
///         {
///             InstanceType = "m4.large",
///         },
///         CoreInstanceGroup = new Aws.Emr.Inputs.ClusterCoreInstanceGroupArgs
///         {
///             InstanceType = "c4.large",
///         },
///         Name = "emr-sample-cluster",
///         ReleaseLabel = "emr-5.30.0",
///     });
///
///     var samplepolicy = new Aws.Emr.ManagedScalingPolicy("samplepolicy", new()
///     {
///         ComputeLimits = new[]
///         {
///             new Aws.Emr.Inputs.ManagedScalingPolicyComputeLimitArgs
///             {
///                 UnitType = "Instances",
///                 MinimumCapacityUnits = 2,
///                 MaximumCapacityUnits = 10,
///                 MaximumOndemandCapacityUnits = 2,
///                 MaximumCoreCapacityUnits = 10,
///             },
///         },
///         ClusterId = sample.Id,
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
/// 		sample, err := emr.NewCluster(ctx, "sample", &emr.ClusterArgs{
/// 			MasterInstanceGroup: &emr.ClusterMasterInstanceGroupArgs{
/// 				InstanceType: pulumi.String("m4.large"),
/// 			},
/// 			CoreInstanceGroup: &emr.ClusterCoreInstanceGroupArgs{
/// 				InstanceType: pulumi.String("c4.large"),
/// 			},
/// 			Name:         pulumi.String("emr-sample-cluster"),
/// 			ReleaseLabel: pulumi.String("emr-5.30.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emr.NewManagedScalingPolicy(ctx, "samplepolicy", &emr.ManagedScalingPolicyArgs{
/// 			ComputeLimits: emr.ManagedScalingPolicyComputeLimitArray{
/// 				&emr.ManagedScalingPolicyComputeLimitArgs{
/// 					UnitType:                     pulumi.String("Instances"),
/// 					MinimumCapacityUnits:         pulumi.Int(2),
/// 					MaximumCapacityUnits:         pulumi.Int(10),
/// 					MaximumOndemandCapacityUnits: pulumi.Int(2),
/// 					MaximumCoreCapacityUnits:     pulumi.Int(10),
/// 				},
/// 			},
/// 			ClusterId: sample.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_emr_cluster" "sample" {
///   master_instance_group = {
///     instance_type = "m4.large"
///   }
///   core_instance_group = {
///     instance_type = "c4.large"
///   }
///   name          = "emr-sample-cluster"
///   release_label = "emr-5.30.0"
/// }
/// resource "aws_emr_managedscalingpolicy" "samplepolicy" {
///   compute_limits {
///     unit_type                       = "Instances"
///     minimum_capacity_units          = 2
///     maximum_capacity_units          = 10
///     maximum_ondemand_capacity_units = 2
///     maximum_core_capacity_units     = 10
///   }
///   cluster_id = aws_emr_cluster.sample.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceGroupArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceGroupArgs;
/// import com.pulumi.aws.emr.ManagedScalingPolicy;
/// import com.pulumi.aws.emr.ManagedScalingPolicyArgs;
/// import com.pulumi.aws.emr.inputs.ManagedScalingPolicyComputeLimitArgs;
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
///         var sample = new Cluster("sample", ClusterArgs.builder()
///             .masterInstanceGroup(ClusterMasterInstanceGroupArgs.builder()
///                 .instanceType("m4.large")
///                 .build())
///             .coreInstanceGroup(ClusterCoreInstanceGroupArgs.builder()
///                 .instanceType("c4.large")
///                 .build())
///             .name("emr-sample-cluster")
///             .releaseLabel("emr-5.30.0")
///             .build());
///
///         var samplepolicy = new ManagedScalingPolicy("samplepolicy", ManagedScalingPolicyArgs.builder()
///             .computeLimits(ManagedScalingPolicyComputeLimitArgs.builder()
///                 .unitType("Instances")
///                 .minimumCapacityUnits(2)
///                 .maximumCapacityUnits(10)
///                 .maximumOndemandCapacityUnits(2)
///                 .maximumCoreCapacityUnits(10)
///                 .build())
///             .clusterId(sample.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sample:
///     type: aws:emr:Cluster
///     properties:
///       masterInstanceGroup:
///         instanceType: m4.large
///       coreInstanceGroup:
///         instanceType: c4.large
///       name: emr-sample-cluster
///       releaseLabel: emr-5.30.0
///   samplepolicy:
///     type: aws:emr:ManagedScalingPolicy
///     properties:
///       computeLimits:
///         - unitType: Instances
///           minimumCapacityUnits: 2
///           maximumCapacityUnits: 10
///           maximumOndemandCapacityUnits: 2
///           maximumCoreCapacityUnits: 10
///       clusterId: ${sample.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Managed Scaling Policies using the EMR Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:emr/managedScalingPolicy:ManagedScalingPolicy example j-123456ABCDEF
/// ```
class ManagedScalingPolicy extends pulumi.CustomResource {
  /// ID of the EMR cluster
  late final pulumi.Output<String> clusterId;
  /// Configuration block with compute limit settings. Described below.
  late final pulumi.Output<List<ManagedScalingPolicyComputeLimit>> computeLimits;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the scaling strategy. When set to `ADVANCED`, the `utilizationPerformanceIndex` argument can be used to configure an advanced scaling strategy. An advanced scaling strategy requires Amazon EMR on EC2 version 7.0 or later. Valid values: `ADVANCED`, `DEFAULT`.
  late final pulumi.Output<String?> scalingStrategy;
  /// Integer value that represents the advanced scaling strategy. Higher values optimize for performance, while lower values optimize for resource conservation. A value of `50` provides a balance between performance and resource conservation. See [the AWS documentation](https://docs.aws.amazon.com/emr/latest/ManagementGuide/managed-scaling-allocation-strategy-optimized.html#managed-scaling-allocation-strategy-optimized-getting-started) for more details. Required when `scalingStrategy` is set to `ADVANCED`. Valid values: `1`, `25`, `50`, `75`, `100`.
  late final pulumi.Output<int?> utilizationPerformanceIndex;

  /// Creates a new [ManagedScalingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedScalingPolicy]. {@macro pulumi_emr_managed_scaling_policy_managed_scaling_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedScalingPolicy(
    String name, {
    ManagedScalingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/managedScalingPolicy:ManagedScalingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    clusterId = registerOutput<String>('clusterId');
    computeLimits = registerOutput<List<ManagedScalingPolicyComputeLimit>>('computeLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedScalingPolicyComputeLimit>(guardedValue, (value) => ManagedScalingPolicyComputeLimit.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    scalingStrategy = registerOutput<String?>('scalingStrategy');
    utilizationPerformanceIndex = registerOutput<int?>('utilizationPerformanceIndex');
  }

  /// Gets an existing [ManagedScalingPolicy] resource's state with the given [name] and [id].
  static ManagedScalingPolicy get(
    String name,
    pulumi.Input<String> id, {
    ManagedScalingPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ManagedScalingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ManagedScalingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/managedScalingPolicy:ManagedScalingPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    computeLimits = registerOutput<List<ManagedScalingPolicyComputeLimit>>('computeLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedScalingPolicyComputeLimit>(guardedValue, (value) => ManagedScalingPolicyComputeLimit.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    scalingStrategy = registerOutput<String?>('scalingStrategy');
    utilizationPerformanceIndex = registerOutput<int?>('utilizationPerformanceIndex');
  }

  /// Creates a typed reference to an existing [ManagedScalingPolicy] resource.
  ManagedScalingPolicy.reference(String urn)
    : super(
        'aws:emr/managedScalingPolicy:ManagedScalingPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clusterId = registerOutput<String>('clusterId');
    computeLimits = registerOutput<List<ManagedScalingPolicyComputeLimit>>('computeLimits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedScalingPolicyComputeLimit>(guardedValue, (value) => ManagedScalingPolicyComputeLimit.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    scalingStrategy = registerOutput<String?>('scalingStrategy');
    utilizationPerformanceIndex = registerOutput<int?>('utilizationPerformanceIndex');
  }
}

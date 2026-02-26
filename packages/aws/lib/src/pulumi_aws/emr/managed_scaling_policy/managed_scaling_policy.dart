import 'package:pulumi/pulumi.dart';
import '../managed_scaling_policy_compute_limit/managed_scaling_policy_compute_limit.dart';
import 'managed_scaling_policy_args.dart';

/// Provides a Managed Scaling policy for EMR Cluster. With Amazon EMR versions 5.30.0 and later (except for Amazon EMR 6.0.0), you can enable EMR managed scaling to automatically increase or decrease the number of instances or units in your cluster based on workload. See [Using EMR Managed Scaling in Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-scaling.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sample = new aws.emr.Cluster("sample", {
/// name: "emr-sample-cluster",
/// releaseLabel: "emr-5.30.0",
/// masterInstanceGroup: {
/// instanceType: "m4.large",
/// },
/// coreInstanceGroup: {
/// instanceType: "c4.large",
/// },
/// });
/// const samplepolicy = new aws.emr.ManagedScalingPolicy("samplepolicy", {
/// clusterId: sample.id,
/// computeLimits: [{
/// unitType: "Instances",
/// minimumCapacityUnits: 2,
/// maximumCapacityUnits: 10,
/// maximumOndemandCapacityUnits: 2,
/// maximumCoreCapacityUnits: 10,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sample = aws.emr.Cluster("sample",
/// name="emr-sample-cluster",
/// release_label="emr-5.30.0",
/// master_instance_group={
/// "instance_type": "m4.large",
/// },
/// core_instance_group={
/// "instance_type": "c4.large",
/// })
/// samplepolicy = aws.emr.ManagedScalingPolicy("samplepolicy",
/// cluster_id=sample.id,
/// compute_limits=[{
/// "unit_type": "Instances",
/// "minimum_capacity_units": 2,
/// "maximum_capacity_units": 10,
/// "maximum_ondemand_capacity_units": 2,
/// "maximum_core_capacity_units": 10,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sample = new Aws.Emr.Cluster("sample", new()
/// {
/// Name = "emr-sample-cluster",
/// ReleaseLabel = "emr-5.30.0",
/// MasterInstanceGroup = new Aws.Emr.Inputs.ClusterMasterInstanceGroupArgs
/// {
/// InstanceType = "m4.large",
/// },
/// CoreInstanceGroup = new Aws.Emr.Inputs.ClusterCoreInstanceGroupArgs
/// {
/// InstanceType = "c4.large",
/// },
/// });
///
/// var samplepolicy = new Aws.Emr.ManagedScalingPolicy("samplepolicy", new()
/// {
/// ClusterId = sample.Id,
/// ComputeLimits = new[]
/// {
/// new Aws.Emr.Inputs.ManagedScalingPolicyComputeLimitArgs
/// {
/// UnitType = "Instances",
/// MinimumCapacityUnits = 2,
/// MaximumCapacityUnits = 10,
/// MaximumOndemandCapacityUnits = 2,
/// MaximumCoreCapacityUnits = 10,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// sample, err := emr.NewCluster(ctx, "sample", &emr.ClusterArgs{
/// Name:         pulumi.String("emr-sample-cluster"),
/// ReleaseLabel: pulumi.String("emr-5.30.0"),
/// MasterInstanceGroup: &emr.ClusterMasterInstanceGroupArgs{
/// InstanceType: pulumi.String("m4.large"),
/// },
/// CoreInstanceGroup: &emr.ClusterCoreInstanceGroupArgs{
/// InstanceType: pulumi.String("c4.large"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = emr.NewManagedScalingPolicy(ctx, "samplepolicy", &emr.ManagedScalingPolicyArgs{
/// ClusterId: sample.ID(),
/// ComputeLimits: emr.ManagedScalingPolicyComputeLimitArray{
/// &emr.ManagedScalingPolicyComputeLimitArgs{
/// UnitType:                     pulumi.String("Instances"),
/// MinimumCapacityUnits:         pulumi.Int(2),
/// MaximumCapacityUnits:         pulumi.Int(10),
/// MaximumOndemandCapacityUnits: pulumi.Int(2),
/// MaximumCoreCapacityUnits:     pulumi.Int(10),
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
/// import com.pulumi.aws.emr.Cluster;
/// import com.pulumi.aws.emr.ClusterArgs;
/// import com.pulumi.aws.emr.inputs.ClusterMasterInstanceGroupArgs;
/// import com.pulumi.aws.emr.inputs.ClusterCoreInstanceGroupArgs;
/// import com.pulumi.aws.emr.ManagedScalingPolicy;
/// import com.pulumi.aws.emr.ManagedScalingPolicyArgs;
/// import com.pulumi.aws.emr.inputs.ManagedScalingPolicyComputeLimitArgs;
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
/// var sample = new Cluster("sample", ClusterArgs.builder()
/// .name("emr-sample-cluster")
/// .releaseLabel("emr-5.30.0")
/// .masterInstanceGroup(ClusterMasterInstanceGroupArgs.builder()
/// .instanceType("m4.large")
/// .build())
/// .coreInstanceGroup(ClusterCoreInstanceGroupArgs.builder()
/// .instanceType("c4.large")
/// .build())
/// .build());
///
/// var samplepolicy = new ManagedScalingPolicy("samplepolicy", ManagedScalingPolicyArgs.builder()
/// .clusterId(sample.id())
/// .computeLimits(ManagedScalingPolicyComputeLimitArgs.builder()
/// .unitType("Instances")
/// .minimumCapacityUnits(2)
/// .maximumCapacityUnits(10)
/// .maximumOndemandCapacityUnits(2)
/// .maximumCoreCapacityUnits(10)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sample:
/// type: aws:emr:Cluster
/// properties:
/// name: emr-sample-cluster
/// releaseLabel: emr-5.30.0
/// masterInstanceGroup:
/// instanceType: m4.large
/// coreInstanceGroup:
/// instanceType: c4.large
/// samplepolicy:
/// type: aws:emr:ManagedScalingPolicy
/// properties:
/// clusterId: ${sample.id}
/// computeLimits:
/// - unitType: Instances
/// minimumCapacityUnits: 2
/// maximumCapacityUnits: 10
/// maximumOndemandCapacityUnits: 2
/// maximumCoreCapacityUnits: 10
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EMR Managed Scaling Policies using the EMR Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:emr/managedScalingPolicy:ManagedScalingPolicy example j-123456ABCDEF
/// ```
class ManagedScalingPolicy extends CustomResource {
  /// ID of the EMR cluster
  late final Output<String> clusterId;

  /// Configuration block with compute limit settings. Described below.
  late final Output<List<ManagedScalingPolicyComputeLimit>> computeLimits;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the scaling strategy. When set to `ADVANCED`, the <span pulumi-lang-nodejs="`utilizationPerformanceIndex`" pulumi-lang-dotnet="`UtilizationPerformanceIndex`" pulumi-lang-go="`utilizationPerformanceIndex`" pulumi-lang-python="`utilization_performance_index`" pulumi-lang-yaml="`utilizationPerformanceIndex`" pulumi-lang-java="`utilizationPerformanceIndex`">`utilization_performance_index`</span> argument can be used to configure an advanced scaling strategy. An advanced scaling strategy requires Amazon EMR on EC2 version 7.0 or later. Valid values: `ADVANCED`, `DEFAULT`.
  late final Output<String?> scalingStrategy;

  /// Integer value that represents the advanced scaling strategy. Higher values optimize for performance, while lower values optimize for resource conservation. A value of <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span> provides a balance between performance and resource conservation. See [the AWS documentation](https://docs.aws.amazon.com/emr/latest/ManagementGuide/managed-scaling-allocation-strategy-optimized.html#managed-scaling-allocation-strategy-optimized-getting-started) for more details. Required when <span pulumi-lang-nodejs="`scalingStrategy`" pulumi-lang-dotnet="`ScalingStrategy`" pulumi-lang-go="`scalingStrategy`" pulumi-lang-python="`scaling_strategy`" pulumi-lang-yaml="`scalingStrategy`" pulumi-lang-java="`scalingStrategy`">`scaling_strategy`</span> is set to `ADVANCED`. Valid values: <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`25`" pulumi-lang-dotnet="`25`" pulumi-lang-go="`25`" pulumi-lang-python="`25`" pulumi-lang-yaml="`25`" pulumi-lang-java="`25`">`25`</span>, <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>, <span pulumi-lang-nodejs="`75`" pulumi-lang-dotnet="`75`" pulumi-lang-go="`75`" pulumi-lang-python="`75`" pulumi-lang-yaml="`75`" pulumi-lang-java="`75`">`75`</span>, <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  late final Output<int?> utilizationPerformanceIndex;

  ManagedScalingPolicy(
    String name, {
    ManagedScalingPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/managedScalingPolicy:ManagedScalingPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterId = Output.createUnknown<String>();
    this.computeLimits =
        Output.createUnknown<List<ManagedScalingPolicyComputeLimit>>();
    this.region = Output.createUnknown<String>();
    this.scalingStrategy = Output.createUnknown<String?>();
    this.utilizationPerformanceIndex = Output.createUnknown<int?>();
  }
}

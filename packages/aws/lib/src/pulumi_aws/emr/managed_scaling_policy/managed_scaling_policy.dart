import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_scaling_policy_compute_limit/managed_scaling_policy_compute_limit.dart';
import 'managed_scaling_policy_args.dart';

/// Provides a Managed Scaling policy for EMR Cluster. With Amazon EMR versions 5.30.0 and later (except for Amazon EMR 6.0.0), you can enable EMR managed scaling to automatically increase or decrease the number of instances or units in your cluster based on workload. See [Using EMR Managed Scaling in Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-scaling.html) for more information.
///
/// ## Example Usage
///
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
  late final pulumi.Output<List<ManagedScalingPolicyComputeLimit>>
      computeLimits;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the scaling strategy. When set to `ADVANCED`, the `utilization_performance_index` argument can be used to configure an advanced scaling strategy. An advanced scaling strategy requires Amazon EMR on EC2 version 7.0 or later. Valid values: `ADVANCED`, `DEFAULT`.
  late final pulumi.Output<String?> scalingStrategy;

  /// Integer value that represents the advanced scaling strategy. Higher values optimize for performance, while lower values optimize for resource conservation. A value of `50` provides a balance between performance and resource conservation. See [the AWS documentation](https://docs.aws.amazon.com/emr/latest/ManagementGuide/managed-scaling-allocation-strategy-optimized.html#managed-scaling-allocation-strategy-optimized-getting-started) for more details. Required when `scaling_strategy` is set to `ADVANCED`. Valid values: `1`, `25`, `50`, `75`, `100`.
  late final pulumi.Output<int?> utilizationPerformanceIndex;

  ManagedScalingPolicy(
    String name, {
    ManagedScalingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/managedScalingPolicy:ManagedScalingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.computeLimits =
        registerOutput<List<ManagedScalingPolicyComputeLimit>>('computeLimits');
    this.region = registerOutput<String>('region');
    this.scalingStrategy = registerOutput<String?>('scalingStrategy');
    this.utilizationPerformanceIndex =
        registerOutput<int?>('utilizationPerformanceIndex');
  }
}

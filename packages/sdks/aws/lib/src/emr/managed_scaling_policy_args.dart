// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_scaling_policy_compute_limit.dart';

/// {@template pulumi_emr_managed_scaling_policy_managed_scaling_policy_args_doc}
/// The set of arguments for ManagedScalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_emr_managed_scaling_policy_managed_scaling_policy_args_doc}
class ManagedScalingPolicyArgs {
  /// ID of the EMR cluster
  final pulumi.Input<String> clusterId;
  /// Configuration block with compute limit settings. Described below.
  final pulumi.Input<List<ManagedScalingPolicyComputeLimit>> computeLimits;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the scaling strategy. When set to `ADVANCED`, the `utilization_performance_index` argument can be used to configure an advanced scaling strategy. An advanced scaling strategy requires Amazon EMR on EC2 version 7.0 or later. Valid values: `ADVANCED`, `DEFAULT`.
  final pulumi.Input<String>? scalingStrategy;
  /// Integer value that represents the advanced scaling strategy. Higher values optimize for performance, while lower values optimize for resource conservation. A value of `50` provides a balance between performance and resource conservation. See [the AWS documentation](https://docs.aws.amazon.com/emr/latest/ManagementGuide/managed-scaling-allocation-strategy-optimized.html#managed-scaling-allocation-strategy-optimized-getting-started) for more details. Required when `scaling_strategy` is set to `ADVANCED`. Valid values: `1`, `25`, `50`, `75`, `100`.
  final pulumi.Input<int>? utilizationPerformanceIndex;

  /// Creates a new [ManagedScalingPolicyArgs].
  /// [clusterId] ID of the EMR cluster
  /// [computeLimits] Configuration block with compute limit settings. Described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingStrategy] Specifies the scaling strategy. When set to `ADVANCED`, the `utilization_performance_index` argument can be used to configure an advanced scaling strategy. An advanced scaling strategy requires Amazon EMR on EC2 version 7.0 or later. Valid values: `ADVANCED`, `DEFAULT`.
  /// [utilizationPerformanceIndex] Integer value that represents the advanced scaling strategy. Higher values optimize for performance, while lower values optimize for resource conservation. A value of `50` provides a balance between performance and resource conservation. See [the AWS documentation](https://docs.aws.amazon.com/emr/latest/ManagementGuide/managed-scaling-allocation-strategy-optimized.html#managed-scaling-allocation-strategy-optimized-getting-started) for more details. Required when `scaling_strategy` is set to `ADVANCED`. Valid values: `1`, `25`, `50`, `75`, `100`.
  const ManagedScalingPolicyArgs({
    required this.clusterId,
    required this.computeLimits,
    this.region,
    this.scalingStrategy,
    this.utilizationPerformanceIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'computeLimits': pulumi.Input.mapInputValue<List<ManagedScalingPolicyComputeLimit>, List<Map<String, dynamic>>>(computeLimits, (value) => pulumi.Input.encodeList<ManagedScalingPolicyComputeLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'scalingStrategy': ?scalingStrategy,
      'utilizationPerformanceIndex': ?utilizationPerformanceIndex,
    };
  }

  factory ManagedScalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedScalingPolicyArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      computeLimits: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedScalingPolicyComputeLimit>(map['computeLimits']!, (value) => ManagedScalingPolicyComputeLimit.fromMap((value as Map).cast<String, dynamic>()))),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingStrategy: (() { final guardedValue = map['scalingStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      utilizationPerformanceIndex: (() { final guardedValue = map['utilizationPerformanceIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


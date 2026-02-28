// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_autoscaling_policy_cpu_utilization.dart';
import 'autoscaler_autoscaling_policy_load_balancing_utilization.dart';
import 'autoscaler_autoscaling_policy_metric.dart';
import 'autoscaler_autoscaling_policy_scale_down_control.dart';
import 'autoscaler_autoscaling_policy_scale_in_control.dart';
import 'autoscaler_autoscaling_policy_scaling_schedule.dart';

class AutoscalerAutoscalingPolicy {
  /// The number of seconds that the autoscaler should wait before it
  /// starts collecting information from a new instance. This prevents
  /// the autoscaler from collecting information when the instance is
  /// initializing, during which the collected usage would not be
  /// reliable. The default time autoscaler waits is 60 seconds.
  /// Virtual machine initialization times might vary because of
  /// numerous factors. We recommend that you test how long an
  /// instance may take to initialize. To do this, create an instance
  /// and time the startup process.
  final int? cooldownPeriod;
  /// Defines the CPU utilization policy that allows the autoscaler to
  /// scale based on the average CPU utilization of a managed instance
  /// group.
  /// Structure is documented below.
  final AutoscalerAutoscalingPolicyCpuUtilization? cpuUtilization;
  /// Configuration parameters of autoscaling based on a load balancer.
  /// Structure is documented below.
  final AutoscalerAutoscalingPolicyLoadBalancingUtilization? loadBalancingUtilization;
  /// The maximum number of instances that the autoscaler can scale up
  /// to. This is required when creating or updating an autoscaler. The
  /// maximum number of replicas should not be lower than minimal number
  /// of replicas.
  final int maxReplicas;
  /// Configuration parameters of autoscaling based on a custom metric.
  /// Structure is documented below.
  final List<AutoscalerAutoscalingPolicyMetric>? metrics;
  /// The minimum number of replicas that the autoscaler can scale down
  /// to. This cannot be less than 0. If not provided, autoscaler will
  /// choose a default value depending on maximum number of instances
  /// allowed.
  final int minReplicas;
  /// Defines operating mode for this policy.
  final String? mode;
  /// Defines scale down controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final AutoscalerAutoscalingPolicyScaleDownControl? scaleDownControl;
  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final AutoscalerAutoscalingPolicyScaleInControl? scaleInControl;
  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  /// Structure is documented below.
  final List<AutoscalerAutoscalingPolicyScalingSchedule>? scalingSchedules;

  /// Creates a new [AutoscalerAutoscalingPolicy].
  /// [cooldownPeriod] The number of seconds that the autoscaler should wait before it
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on a load balancer.
  /// [maxReplicas] The maximum number of instances that the autoscaler can scale up
  /// [metrics] Configuration parameters of autoscaling based on a custom metric.
  /// [minReplicas] The minimum number of replicas that the autoscaler can scale down
  /// [mode] Defines operating mode for this policy.
  /// [scaleDownControl] Defines scale down controls to reduce the risk of response latency
  /// [scaleInControl] Defines scale in controls to reduce the risk of response latency
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  AutoscalerAutoscalingPolicy({
    this.cooldownPeriod,
    this.cpuUtilization,
    this.loadBalancingUtilization,
    required this.maxReplicas,
    this.metrics,
    required this.minReplicas,
    this.mode,
    this.scaleDownControl,
    this.scaleInControl,
    this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriod': ?cooldownPeriod,
      'cpuUtilization': ?cpuUtilization == null ? null : cpuUtilization!.toMap(),
      'loadBalancingUtilization': ?loadBalancingUtilization == null ? null : loadBalancingUtilization!.toMap(),
      'maxReplicas': maxReplicas,
      'metrics': ?metrics == null ? null : pulumi.Input.encodeList<AutoscalerAutoscalingPolicyMetric, Map<String, dynamic>>(metrics!, (value) => value.toMap()),
      'minReplicas': minReplicas,
      'mode': ?mode,
      'scaleDownControl': ?scaleDownControl == null ? null : scaleDownControl!.toMap(),
      'scaleInControl': ?scaleInControl == null ? null : scaleInControl!.toMap(),
      'scalingSchedules': ?scalingSchedules == null ? null : pulumi.Input.encodeList<AutoscalerAutoscalingPolicyScalingSchedule, Map<String, dynamic>>(scalingSchedules!, (value) => value.toMap()),
    };
  }

  factory AutoscalerAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoscalerAutoscalingPolicy(
      cooldownPeriod: map['cooldownPeriod'] == null ? null : map['cooldownPeriod'] as int,
      cpuUtilization: map['cpuUtilization'] == null ? null : AutoscalerAutoscalingPolicyCpuUtilization.fromMap((map['cpuUtilization'] as Map).cast<String, dynamic>()),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null ? null : AutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap((map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxReplicas: map['maxReplicas'] as int,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<AutoscalerAutoscalingPolicyMetric>(map['metrics'], (value) => AutoscalerAutoscalingPolicyMetric.fromMap((value as Map).cast<String, dynamic>())),
      minReplicas: map['minReplicas'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      scaleDownControl: map['scaleDownControl'] == null ? null : AutoscalerAutoscalingPolicyScaleDownControl.fromMap((map['scaleDownControl'] as Map).cast<String, dynamic>()),
      scaleInControl: map['scaleInControl'] == null ? null : AutoscalerAutoscalingPolicyScaleInControl.fromMap((map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: map['scalingSchedules'] == null ? null : pulumi.Input.decodeList<AutoscalerAutoscalingPolicyScalingSchedule>(map['scalingSchedules'], (value) => AutoscalerAutoscalingPolicyScalingSchedule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


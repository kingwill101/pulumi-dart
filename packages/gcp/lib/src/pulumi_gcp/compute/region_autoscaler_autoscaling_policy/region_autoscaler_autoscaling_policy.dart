// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_autoscaler_autoscaling_policy_cpu_utilization/region_autoscaler_autoscaling_policy_cpu_utilization.dart';
import '../region_autoscaler_autoscaling_policy_load_balancing_utilization/region_autoscaler_autoscaling_policy_load_balancing_utilization.dart';
import '../region_autoscaler_autoscaling_policy_metric/region_autoscaler_autoscaling_policy_metric.dart';
import '../region_autoscaler_autoscaling_policy_scale_down_control/region_autoscaler_autoscaling_policy_scale_down_control.dart';
import '../region_autoscaler_autoscaling_policy_scale_in_control/region_autoscaler_autoscaling_policy_scale_in_control.dart';
import '../region_autoscaler_autoscaling_policy_scaling_schedule/region_autoscaler_autoscaling_policy_scaling_schedule.dart';

class RegionAutoscalerAutoscalingPolicy {
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
  final RegionAutoscalerAutoscalingPolicyCpuUtilization? cpuUtilization;

  /// Configuration parameters of autoscaling based on a load balancer.
  /// Structure is documented below.
  final RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization?
      loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale up
  /// to. This is required when creating or updating an autoscaler. The
  /// maximum number of replicas should not be lower than minimal number
  /// of replicas.
  final int maxReplicas;

  /// Configuration parameters of autoscaling based on a custom metric.
  /// Structure is documented below.
  final List<RegionAutoscalerAutoscalingPolicyMetric>? metrics;

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
  final RegionAutoscalerAutoscalingPolicyScaleDownControl? scaleDownControl;

  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final RegionAutoscalerAutoscalingPolicyScaleInControl? scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap.
  /// Structure is documented below.
  final List<RegionAutoscalerAutoscalingPolicyScalingSchedule>?
      scalingSchedules;

  RegionAutoscalerAutoscalingPolicy({
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
    final map = <String, dynamic>{};
    final cooldownPeriodValue = cooldownPeriod;
    if (cooldownPeriodValue != null) {
      map['cooldownPeriod'] = cooldownPeriodValue;
    }
    final cpuUtilizationValue = cpuUtilization;
    if (cpuUtilizationValue != null) {
      map['cpuUtilization'] = cpuUtilizationValue.toMap();
    }
    final loadBalancingUtilizationValue = loadBalancingUtilization;
    if (loadBalancingUtilizationValue != null) {
      map['loadBalancingUtilization'] = loadBalancingUtilizationValue.toMap();
    }
    map['maxReplicas'] = maxReplicas;
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = Input.encodeList<RegionAutoscalerAutoscalingPolicyMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    map['minReplicas'] = minReplicas;
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final scaleDownControlValue = scaleDownControl;
    if (scaleDownControlValue != null) {
      map['scaleDownControl'] = scaleDownControlValue.toMap();
    }
    final scaleInControlValue = scaleInControl;
    if (scaleInControlValue != null) {
      map['scaleInControl'] = scaleInControlValue.toMap();
    }
    final scalingSchedulesValue = scalingSchedules;
    if (scalingSchedulesValue != null) {
      map['scalingSchedules'] = Input.encodeList<
              RegionAutoscalerAutoscalingPolicyScalingSchedule,
              Map<String, dynamic>>(
          scalingSchedulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionAutoscalerAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicy(
      cooldownPeriod:
          map['cooldownPeriod'] == null ? null : map['cooldownPeriod'] as int,
      cpuUtilization: map['cpuUtilization'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyCpuUtilization.fromMap(
              (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyLoadBalancingUtilization.fromMap(
              (map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxReplicas: map['maxReplicas'] as int,
      metrics: map['metrics'] == null
          ? null
          : Input.decodeList<RegionAutoscalerAutoscalingPolicyMetric>(
              map['metrics'],
              (value) => RegionAutoscalerAutoscalingPolicyMetric.fromMap(
                  (value as Map).cast<String, dynamic>())),
      minReplicas: map['minReplicas'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      scaleDownControl: map['scaleDownControl'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyScaleDownControl.fromMap(
              (map['scaleDownControl'] as Map).cast<String, dynamic>()),
      scaleInControl: map['scaleInControl'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyScaleInControl.fromMap(
              (map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: map['scalingSchedules'] == null
          ? null
          : Input.decodeList<RegionAutoscalerAutoscalingPolicyScalingSchedule>(
              map['scalingSchedules'],
              (value) =>
                  RegionAutoscalerAutoscalingPolicyScalingSchedule.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

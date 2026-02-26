// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'autoscaling_policy_cpu_utilization3.dart';
import 'autoscaling_policy_custom_metric_utilization3.dart';
import 'autoscaling_policy_load_balancing_utilization3.dart';
import 'autoscaling_policy_mode3.dart';
import 'autoscaling_policy_scale_in_control3.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicy3 {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final int? coolDownPeriodSec;

  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final AutoscalingPolicyCpuUtilization3? cpuUtilization;

  /// Configuration parameters of autoscaling based on a custom metric.
  final List<AutoscalingPolicyCustomMetricUtilization3>?
      customMetricUtilizations;

  /// Configuration parameters of autoscaling based on load balancer.
  final AutoscalingPolicyLoadBalancingUtilization3? loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final int? maxNumReplicas;

  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final int? minNumReplicas;

  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final AutoscalingPolicyMode3? mode;
  final AutoscalingPolicyScaleInControl3? scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final Map<String, String>? scalingSchedules;

  AutoscalingPolicy3({
    this.coolDownPeriodSec,
    this.cpuUtilization,
    this.customMetricUtilizations,
    this.loadBalancingUtilization,
    this.maxNumReplicas,
    this.minNumReplicas,
    this.mode,
    this.scaleInControl,
    this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coolDownPeriodSecValue = coolDownPeriodSec;
    if (coolDownPeriodSecValue != null) {
      map['coolDownPeriodSec'] = coolDownPeriodSecValue;
    }
    final cpuUtilizationValue = cpuUtilization;
    if (cpuUtilizationValue != null) {
      map['cpuUtilization'] = cpuUtilizationValue.toMap();
    }
    final customMetricUtilizationsValue = customMetricUtilizations;
    if (customMetricUtilizationsValue != null) {
      map['customMetricUtilizations'] = Input.encodeList<
              AutoscalingPolicyCustomMetricUtilization3, Map<String, dynamic>>(
          customMetricUtilizationsValue, (value) => value.toMap());
    }
    final loadBalancingUtilizationValue = loadBalancingUtilization;
    if (loadBalancingUtilizationValue != null) {
      map['loadBalancingUtilization'] = loadBalancingUtilizationValue.toMap();
    }
    final maxNumReplicasValue = maxNumReplicas;
    if (maxNumReplicasValue != null) {
      map['maxNumReplicas'] = maxNumReplicasValue;
    }
    final minNumReplicasValue = minNumReplicas;
    if (minNumReplicasValue != null) {
      map['minNumReplicas'] = minNumReplicasValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final scaleInControlValue = scaleInControl;
    if (scaleInControlValue != null) {
      map['scaleInControl'] = scaleInControlValue.toMap();
    }
    final scalingSchedulesValue = scalingSchedules;
    if (scalingSchedulesValue != null) {
      map['scalingSchedules'] = scalingSchedulesValue;
    }
    return map;
  }

  factory AutoscalingPolicy3.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicy3(
      coolDownPeriodSec: map['coolDownPeriodSec'] == null
          ? null
          : map['coolDownPeriodSec'] as int,
      cpuUtilization: map['cpuUtilization'] == null
          ? null
          : AutoscalingPolicyCpuUtilization3.fromMap(
              (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetricUtilizations: map['customMetricUtilizations'] == null
          ? null
          : Input.decodeList<AutoscalingPolicyCustomMetricUtilization3>(
              map['customMetricUtilizations'],
              (value) => AutoscalingPolicyCustomMetricUtilization3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null
          ? null
          : AutoscalingPolicyLoadBalancingUtilization3.fromMap(
              (map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxNumReplicas:
          map['maxNumReplicas'] == null ? null : map['maxNumReplicas'] as int,
      minNumReplicas:
          map['minNumReplicas'] == null ? null : map['minNumReplicas'] as int,
      mode: map['mode'] == null
          ? null
          : AutoscalingPolicyMode3.fromValue(map['mode'] as String),
      scaleInControl: map['scaleInControl'] == null
          ? null
          : AutoscalingPolicyScaleInControl3.fromMap(
              (map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: map['scalingSchedules'] == null
          ? null
          : (map['scalingSchedules'] as Map).cast<String, String>(),
    );
  }
}

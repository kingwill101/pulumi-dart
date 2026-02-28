// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization.dart';
import 'autoscaling_policy_custom_metric_utilization.dart';
import 'autoscaling_policy_load_balancing_utilization.dart';
import 'autoscaling_policy_mode.dart';
import 'autoscaling_policy_scale_down_control.dart';
import 'autoscaling_policy_scale_in_control.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicy {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final int? coolDownPeriodSec;

  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final AutoscalingPolicyCpuUtilization? cpuUtilization;

  /// Configuration parameters of autoscaling based on a custom metric.
  final List<AutoscalingPolicyCustomMetricUtilization>?
      customMetricUtilizations;

  /// Configuration parameters of autoscaling based on load balancer.
  final AutoscalingPolicyLoadBalancingUtilization? loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final int? maxNumReplicas;

  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final int? minNumReplicas;

  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final AutoscalingPolicyMode? mode;
  final AutoscalingPolicyScaleDownControl? scaleDownControl;
  final AutoscalingPolicyScaleInControl? scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final Map<String, String>? scalingSchedules;

  /// Creates a new [AutoscalingPolicy].
  /// [coolDownPeriodSec] The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  /// [cpuUtilization] Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  /// [customMetricUtilizations] Configuration parameters of autoscaling based on a custom metric.
  /// [loadBalancingUtilization] Configuration parameters of autoscaling based on load balancer.
  /// [maxNumReplicas] The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  /// [minNumReplicas] The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  /// [mode] Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  /// [scaleDownControl] Optional.
  /// [scaleInControl] Optional.
  /// [scalingSchedules] Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  AutoscalingPolicy({
    this.coolDownPeriodSec,
    this.cpuUtilization,
    this.customMetricUtilizations,
    this.loadBalancingUtilization,
    this.maxNumReplicas,
    this.minNumReplicas,
    this.mode,
    this.scaleDownControl,
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
      map['customMetricUtilizations'] = pulumi.Input.encodeList<
              AutoscalingPolicyCustomMetricUtilization, Map<String, dynamic>>(
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
      map['scalingSchedules'] = scalingSchedulesValue;
    }
    return map;
  }

  factory AutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicy(
      coolDownPeriodSec: map['coolDownPeriodSec'] == null
          ? null
          : map['coolDownPeriodSec'] as int,
      cpuUtilization: map['cpuUtilization'] == null
          ? null
          : AutoscalingPolicyCpuUtilization.fromMap(
              (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetricUtilizations: map['customMetricUtilizations'] == null
          ? null
          : pulumi.Input.decodeList<AutoscalingPolicyCustomMetricUtilization>(
              map['customMetricUtilizations'],
              (value) => AutoscalingPolicyCustomMetricUtilization.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancingUtilization: map['loadBalancingUtilization'] == null
          ? null
          : AutoscalingPolicyLoadBalancingUtilization.fromMap(
              (map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxNumReplicas:
          map['maxNumReplicas'] == null ? null : map['maxNumReplicas'] as int,
      minNumReplicas:
          map['minNumReplicas'] == null ? null : map['minNumReplicas'] as int,
      mode: map['mode'] == null
          ? null
          : AutoscalingPolicyMode.fromValue(map['mode'] as String),
      scaleDownControl: map['scaleDownControl'] == null
          ? null
          : AutoscalingPolicyScaleDownControl.fromMap(
              (map['scaleDownControl'] as Map).cast<String, dynamic>()),
      scaleInControl: map['scaleInControl'] == null
          ? null
          : AutoscalingPolicyScaleInControl.fromMap(
              (map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: map['scalingSchedules'] == null
          ? null
          : (map['scalingSchedules'] as Map).cast<String, String>(),
    );
  }
}

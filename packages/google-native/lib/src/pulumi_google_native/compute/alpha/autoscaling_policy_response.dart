// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'autoscaling_policy_cpu_utilization_response.dart';
import 'autoscaling_policy_custom_metric_utilization_response.dart';
import 'autoscaling_policy_load_balancing_utilization_response.dart';
import 'autoscaling_policy_scale_down_control_response.dart';
import 'autoscaling_policy_scale_in_control_response.dart';

/// Cloud Autoscaler policy.
class AutoscalingPolicyResponse {
  /// The number of seconds that your application takes to initialize on a VM instance. This is referred to as the [initialization period](/compute/docs/autoscaler#cool_down_period). Specifying an accurate initialization period improves autoscaler decisions. For example, when scaling out, the autoscaler ignores data from VMs that are still initializing because those VMs might not yet represent normal usage of your application. The default initialization period is 60 seconds. Initialization periods might vary because of numerous factors. We recommend that you test how long your application takes to initialize. To do this, create a VM and time your application's startup process.
  final int coolDownPeriodSec;

  /// Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group.
  final AutoscalingPolicyCpuUtilizationResponse cpuUtilization;

  /// Configuration parameters of autoscaling based on a custom metric.
  final List<AutoscalingPolicyCustomMetricUtilizationResponse>
      customMetricUtilizations;

  /// Configuration parameters of autoscaling based on load balancer.
  final AutoscalingPolicyLoadBalancingUtilizationResponse
      loadBalancingUtilization;

  /// The maximum number of instances that the autoscaler can scale out to. This is required when creating or updating an autoscaler. The maximum number of replicas must not be lower than minimal number of replicas.
  final int maxNumReplicas;

  /// The minimum number of replicas that the autoscaler can scale in to. This cannot be less than 0. If not provided, autoscaler chooses a default value depending on maximum number of instances allowed.
  final int minNumReplicas;

  /// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
  final String mode;
  final AutoscalingPolicyScaleDownControlResponse scaleDownControl;
  final AutoscalingPolicyScaleInControlResponse scaleInControl;

  /// Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler, and they can overlap. During overlapping periods the greatest min_required_replicas of all scaling schedules is applied. Up to 128 scaling schedules are allowed.
  final Map<String, String> scalingSchedules;

  AutoscalingPolicyResponse({
    required this.coolDownPeriodSec,
    required this.cpuUtilization,
    required this.customMetricUtilizations,
    required this.loadBalancingUtilization,
    required this.maxNumReplicas,
    required this.minNumReplicas,
    required this.mode,
    required this.scaleDownControl,
    required this.scaleInControl,
    required this.scalingSchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coolDownPeriodSec'] = coolDownPeriodSec;
    map['cpuUtilization'] = cpuUtilization.toMap();
    map['customMetricUtilizations'] = Input.encodeList<
            AutoscalingPolicyCustomMetricUtilizationResponse,
            Map<String, dynamic>>(
        customMetricUtilizations, (value) => value.toMap());
    map['loadBalancingUtilization'] = loadBalancingUtilization.toMap();
    map['maxNumReplicas'] = maxNumReplicas;
    map['minNumReplicas'] = minNumReplicas;
    map['mode'] = mode;
    map['scaleDownControl'] = scaleDownControl.toMap();
    map['scaleInControl'] = scaleInControl.toMap();
    map['scalingSchedules'] = scalingSchedules;
    return map;
  }

  factory AutoscalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyResponse(
      coolDownPeriodSec: map['coolDownPeriodSec'] as int,
      cpuUtilization: AutoscalingPolicyCpuUtilizationResponse.fromMap(
          (map['cpuUtilization'] as Map).cast<String, dynamic>()),
      customMetricUtilizations:
          Input.decodeList<AutoscalingPolicyCustomMetricUtilizationResponse>(
              map['customMetricUtilizations'],
              (value) =>
                  AutoscalingPolicyCustomMetricUtilizationResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      loadBalancingUtilization:
          AutoscalingPolicyLoadBalancingUtilizationResponse.fromMap(
              (map['loadBalancingUtilization'] as Map).cast<String, dynamic>()),
      maxNumReplicas: map['maxNumReplicas'] as int,
      minNumReplicas: map['minNumReplicas'] as int,
      mode: map['mode'] as String,
      scaleDownControl: AutoscalingPolicyScaleDownControlResponse.fromMap(
          (map['scaleDownControl'] as Map).cast<String, dynamic>()),
      scaleInControl: AutoscalingPolicyScaleInControlResponse.fromMap(
          (map['scaleInControl'] as Map).cast<String, dynamic>()),
      scalingSchedules: (map['scalingSchedules'] as Map).cast<String, String>(),
    );
  }
}

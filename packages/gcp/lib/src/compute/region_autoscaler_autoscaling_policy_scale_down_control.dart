// ignore_for_file: unused_element, unnecessary_cast

import 'region_autoscaler_autoscaling_policy_scale_down_control_max_scaled_down_replicas.dart';

class RegionAutoscalerAutoscalingPolicyScaleDownControl {
  /// A nested object resource.
  /// Structure is documented below.
  final RegionAutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas?
      maxScaledDownReplicas;

  /// How long back autoscaling should look when computing recommendations
  /// to include directives regarding slower scale down, as described above.
  final int? timeWindowSec;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyScaleDownControl].
  /// [maxScaledDownReplicas] A nested object resource.
  /// [timeWindowSec] How long back autoscaling should look when computing recommendations
  RegionAutoscalerAutoscalingPolicyScaleDownControl({
    this.maxScaledDownReplicas,
    this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxScaledDownReplicasValue = maxScaledDownReplicas;
    if (maxScaledDownReplicasValue != null) {
      map['maxScaledDownReplicas'] = maxScaledDownReplicasValue.toMap();
    }
    final timeWindowSecValue = timeWindowSec;
    if (timeWindowSecValue != null) {
      map['timeWindowSec'] = timeWindowSecValue;
    }
    return map;
  }

  factory RegionAutoscalerAutoscalingPolicyScaleDownControl.fromMap(
      Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyScaleDownControl(
      maxScaledDownReplicas: map['maxScaledDownReplicas'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyScaleDownControlMaxScaledDownReplicas
              .fromMap((map['maxScaledDownReplicas'] as Map)
                  .cast<String, dynamic>()),
      timeWindowSec:
          map['timeWindowSec'] == null ? null : map['timeWindowSec'] as int,
    );
  }
}

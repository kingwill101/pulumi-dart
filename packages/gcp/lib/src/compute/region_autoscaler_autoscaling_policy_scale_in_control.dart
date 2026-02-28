// ignore_for_file: unused_element, unnecessary_cast

import 'region_autoscaler_autoscaling_policy_scale_in_control_max_scaled_in_replicas.dart';

class RegionAutoscalerAutoscalingPolicyScaleInControl {
  /// A nested object resource.
  /// Structure is documented below.
  final RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas?
      maxScaledInReplicas;

  /// How long back autoscaling should look when computing recommendations
  /// to include directives regarding slower scale down, as described above.
  final int? timeWindowSec;

  /// Creates a new [RegionAutoscalerAutoscalingPolicyScaleInControl].
  /// [maxScaledInReplicas] A nested object resource.
  /// [timeWindowSec] How long back autoscaling should look when computing recommendations
  RegionAutoscalerAutoscalingPolicyScaleInControl({
    this.maxScaledInReplicas,
    this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxScaledInReplicasValue = maxScaledInReplicas;
    if (maxScaledInReplicasValue != null) {
      map['maxScaledInReplicas'] = maxScaledInReplicasValue.toMap();
    }
    final timeWindowSecValue = timeWindowSec;
    if (timeWindowSecValue != null) {
      map['timeWindowSec'] = timeWindowSecValue;
    }
    return map;
  }

  factory RegionAutoscalerAutoscalingPolicyScaleInControl.fromMap(
      Map<String, dynamic> map) {
    return RegionAutoscalerAutoscalingPolicyScaleInControl(
      maxScaledInReplicas: map['maxScaledInReplicas'] == null
          ? null
          : RegionAutoscalerAutoscalingPolicyScaleInControlMaxScaledInReplicas
              .fromMap(
                  (map['maxScaledInReplicas'] as Map).cast<String, dynamic>()),
      timeWindowSec:
          map['timeWindowSec'] == null ? null : map['timeWindowSec'] as int,
    );
  }
}

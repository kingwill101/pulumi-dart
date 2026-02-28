// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent.dart';

/// Configuration that allows for slower scale in so that even if Autoscaler recommends an abrupt scale in of a MIG, it will be throttled as specified by the parameters below.
class AutoscalingPolicyScaleInControl {
  /// Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  final FixedOrPercent? maxScaledInReplicas;

  /// How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  final int? timeWindowSec;

  /// Creates a new [AutoscalingPolicyScaleInControl].
  /// [maxScaledInReplicas] Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  /// [timeWindowSec] How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  AutoscalingPolicyScaleInControl({
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

  factory AutoscalingPolicyScaleInControl.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyScaleInControl(
      maxScaledInReplicas: map['maxScaledInReplicas'] == null
          ? null
          : FixedOrPercent.fromMap(
              (map['maxScaledInReplicas'] as Map).cast<String, dynamic>()),
      timeWindowSec:
          map['timeWindowSec'] == null ? null : map['timeWindowSec'] as int,
    );
  }
}

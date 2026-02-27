// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_compute_v1.dart';

/// Configuration that allows for slower scale in so that even if Autoscaler recommends an abrupt scale in of a MIG, it will be throttled as specified by the parameters below.
class AutoscalingPolicyScaleInControlComputeV1 {
  /// Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  final FixedOrPercentComputeV1? maxScaledInReplicas;

  /// How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  final int? timeWindowSec;

  AutoscalingPolicyScaleInControlComputeV1({
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

  factory AutoscalingPolicyScaleInControlComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AutoscalingPolicyScaleInControlComputeV1(
      maxScaledInReplicas: map['maxScaledInReplicas'] == null
          ? null
          : FixedOrPercentComputeV1.fromMap(
              (map['maxScaledInReplicas'] as Map).cast<String, dynamic>()),
      timeWindowSec:
          map['timeWindowSec'] == null ? null : map['timeWindowSec'] as int,
    );
  }
}

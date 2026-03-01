// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_response_compute_beta.dart';

/// Configuration that allows for slower scale in so that even if Autoscaler recommends an abrupt scale in of a MIG, it will be throttled as specified by the parameters below.
class AutoscalingPolicyScaleInControlResponseComputeBeta {
  /// Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  final FixedOrPercentResponseComputeBeta maxScaledInReplicas;

  /// How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  final int timeWindowSec;

  /// Creates a new [AutoscalingPolicyScaleInControlResponseComputeBeta].
  /// [maxScaledInReplicas] Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  /// [timeWindowSec] How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  AutoscalingPolicyScaleInControlResponseComputeBeta({
    required this.maxScaledInReplicas,
    required this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScaledInReplicas': maxScaledInReplicas.toMap(),
      'timeWindowSec': timeWindowSec,
    };
  }

  factory AutoscalingPolicyScaleInControlResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingPolicyScaleInControlResponseComputeBeta(
      maxScaledInReplicas: FixedOrPercentResponseComputeBeta.fromMap(
        (map['maxScaledInReplicas'] as Map).cast<String, dynamic>(),
      ),
      timeWindowSec: map['timeWindowSec'] as int,
    );
  }
}

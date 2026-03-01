// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_response.dart';

/// Configuration that allows for slower scale in so that even if Autoscaler recommends an abrupt scale in of a MIG, it will be throttled as specified by the parameters below.
class AutoscalingPolicyScaleInControlResponse {
  /// Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  final FixedOrPercentResponse maxScaledInReplicas;

  /// How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  final int timeWindowSec;

  /// Creates a new [AutoscalingPolicyScaleInControlResponse].
  /// [maxScaledInReplicas] Maximum allowed number (or %) of VMs that can be deducted from the peak recommendation during the window autoscaler looks at when computing recommendations. Possibly all these VMs can be deleted at once so user service needs to be prepared to lose that many VMs in one step.
  /// [timeWindowSec] How far back autoscaling looks when computing recommendations to include directives regarding slower scale in, as described above.
  AutoscalingPolicyScaleInControlResponse({
    required this.maxScaledInReplicas,
    required this.timeWindowSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScaledInReplicas': maxScaledInReplicas.toMap(),
      'timeWindowSec': timeWindowSec,
    };
  }

  factory AutoscalingPolicyScaleInControlResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingPolicyScaleInControlResponse(
      maxScaledInReplicas: FixedOrPercentResponse.fromMap(
        (map['maxScaledInReplicas'] as Map).cast<String, dynamic>(),
      ),
      timeWindowSec: map['timeWindowSec'] as int,
    );
  }
}

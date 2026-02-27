// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduling_policy_fair_share_policy_share_distribution/scheduling_policy_fair_share_policy_share_distribution.dart';

class SchedulingPolicyFairSharePolicy {
  /// A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  final int? computeReservation;
  final int? shareDecaySeconds;

  /// One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `share_distribution` block is documented below.
  final List<SchedulingPolicyFairSharePolicyShareDistribution>?
      shareDistributions;

  SchedulingPolicyFairSharePolicy({
    this.computeReservation,
    this.shareDecaySeconds,
    this.shareDistributions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeReservationValue = computeReservation;
    if (computeReservationValue != null) {
      map['computeReservation'] = computeReservationValue;
    }
    final shareDecaySecondsValue = shareDecaySeconds;
    if (shareDecaySecondsValue != null) {
      map['shareDecaySeconds'] = shareDecaySecondsValue;
    }
    final shareDistributionsValue = shareDistributions;
    if (shareDistributionsValue != null) {
      map['shareDistributions'] = pulumi.Input.encodeList<
              SchedulingPolicyFairSharePolicyShareDistribution,
              Map<String, dynamic>>(
          shareDistributionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SchedulingPolicyFairSharePolicy.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyFairSharePolicy(
      computeReservation: map['computeReservation'] == null
          ? null
          : map['computeReservation'] as int,
      shareDecaySeconds: map['shareDecaySeconds'] == null
          ? null
          : map['shareDecaySeconds'] as int,
      shareDistributions: map['shareDistributions'] == null
          ? null
          : pulumi.Input.decodeList<
                  SchedulingPolicyFairSharePolicyShareDistribution>(
              map['shareDistributions'],
              (value) =>
                  SchedulingPolicyFairSharePolicyShareDistribution.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

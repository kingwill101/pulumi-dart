// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_scheduling_policy_fair_share_policy_share_distribution/get_scheduling_policy_fair_share_policy_share_distribution.dart';

class GetSchedulingPolicyFairSharePolicy {
  /// Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  final int computeReservation;
  final int shareDecaySeconds;

  /// One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `share_distribution` block is documented below.
  final List<GetSchedulingPolicyFairSharePolicyShareDistribution>
      shareDistributions;

  GetSchedulingPolicyFairSharePolicy({
    required this.computeReservation,
    required this.shareDecaySeconds,
    required this.shareDistributions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeReservation'] = computeReservation;
    map['shareDecaySeconds'] = shareDecaySeconds;
    map['shareDistributions'] = pulumi.Input.encodeList<
        GetSchedulingPolicyFairSharePolicyShareDistribution,
        Map<String, dynamic>>(shareDistributions, (value) => value.toMap());
    return map;
  }

  factory GetSchedulingPolicyFairSharePolicy.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyFairSharePolicy(
      computeReservation: map['computeReservation'] as int,
      shareDecaySeconds: map['shareDecaySeconds'] as int,
      shareDistributions: pulumi.Input.decodeList<
              GetSchedulingPolicyFairSharePolicyShareDistribution>(
          map['shareDistributions'],
          (value) =>
              GetSchedulingPolicyFairSharePolicyShareDistribution.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

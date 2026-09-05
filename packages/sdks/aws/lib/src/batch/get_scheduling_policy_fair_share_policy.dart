// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduling_policy_fair_share_policy_share_distribution.dart';

class GetSchedulingPolicyFairSharePolicy {
  /// Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  final pulumi.Input<int> computeReservation;
  final pulumi.Input<int> shareDecaySeconds;
  /// One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `shareDistribution` block is documented below.
  final pulumi.Input<List<GetSchedulingPolicyFairSharePolicyShareDistribution>> shareDistributions;

  /// Creates a new [GetSchedulingPolicyFairSharePolicy].
  /// [computeReservation] Value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  /// [shareDecaySeconds] Required.
  /// [shareDistributions] One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `shareDistribution` block is documented below.
  const GetSchedulingPolicyFairSharePolicy({
    required this.computeReservation,
    required this.shareDecaySeconds,
    required this.shareDistributions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeReservation': computeReservation,
      'shareDecaySeconds': shareDecaySeconds,
      'shareDistributions': pulumi.Input.mapInputValue<List<GetSchedulingPolicyFairSharePolicyShareDistribution>, List<Map<String, dynamic>>>(shareDistributions, (value) => pulumi.Input.encodeList<GetSchedulingPolicyFairSharePolicyShareDistribution, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSchedulingPolicyFairSharePolicy.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyFairSharePolicy(
      computeReservation: pulumi.Input.fromValue((map['computeReservation'] as num).toInt()),
      shareDecaySeconds: pulumi.Input.fromValue((map['shareDecaySeconds'] as num).toInt()),
      shareDistributions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSchedulingPolicyFairSharePolicyShareDistribution>(map['shareDistributions']!, (value) => GetSchedulingPolicyFairSharePolicyShareDistribution.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

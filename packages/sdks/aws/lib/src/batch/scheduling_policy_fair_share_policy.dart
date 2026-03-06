// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_policy_fair_share_policy_share_distribution.dart';

class SchedulingPolicyFairSharePolicy {
  /// A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  final pulumi.Input<int>? computeReservation;
  final pulumi.Input<int>? shareDecaySeconds;
  /// One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `share_distribution` block is documented below.
  final pulumi.Input<List<SchedulingPolicyFairSharePolicyShareDistribution>>? shareDistributions;

  /// Creates a new [SchedulingPolicyFairSharePolicy].
  /// [computeReservation] A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html).
  /// [shareDecaySeconds] Optional.
  /// [shareDistributions] One or more share distribution blocks which define the weights for the fair share identifiers for the fair share policy. For more information, see [FairsharePolicy](https://docs.aws.amazon.com/batch/latest/APIReference/API_FairsharePolicy.html). The `share_distribution` block is documented below.
  const SchedulingPolicyFairSharePolicy({
    this.computeReservation,
    this.shareDecaySeconds,
    this.shareDistributions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeReservation': ?computeReservation,
      'shareDecaySeconds': ?shareDecaySeconds,
      'shareDistributions': ?pulumi.Input.mapOptionalInputValue<List<SchedulingPolicyFairSharePolicyShareDistribution>, List<Map<String, dynamic>>>(shareDistributions, (value) => pulumi.Input.encodeList<SchedulingPolicyFairSharePolicyShareDistribution, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchedulingPolicyFairSharePolicy.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyFairSharePolicy(
      computeReservation: (() { final guardedValue = map['computeReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shareDecaySeconds: (() { final guardedValue = map['shareDecaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shareDistributions: (() { final guardedValue = map['shareDistributions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchedulingPolicyFairSharePolicyShareDistribution>(guardedValue, (value) => SchedulingPolicyFairSharePolicyShareDistribution.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


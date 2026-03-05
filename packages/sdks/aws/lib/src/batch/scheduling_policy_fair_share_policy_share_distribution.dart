// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchedulingPolicyFairSharePolicyShareDistribution {
  /// A fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final pulumi.Input<String> shareIdentifier;
  /// The weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final pulumi.Input<double>? weightFactor;

  /// Creates a new [SchedulingPolicyFairSharePolicyShareDistribution].
  /// [shareIdentifier] A fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  /// [weightFactor] The weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  SchedulingPolicyFairSharePolicyShareDistribution({
    required this.shareIdentifier,
    this.weightFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareIdentifier': shareIdentifier,
      'weightFactor': ?weightFactor,
    };
  }

  factory SchedulingPolicyFairSharePolicyShareDistribution.fromMap(Map<String, dynamic> map) {
    return SchedulingPolicyFairSharePolicyShareDistribution(
      shareIdentifier: pulumi.Input.fromValue(map['shareIdentifier'] as String),
      weightFactor: (() { final guardedValue = map['weightFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class SchedulingPolicyFairSharePolicyShareDistribution {
  /// A fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final String shareIdentifier;
  /// The weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final double? weightFactor;

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
      shareIdentifier: map['shareIdentifier'] as String,
      weightFactor: map['weightFactor'] == null ? null : map['weightFactor'] as double,
    );
  }
}


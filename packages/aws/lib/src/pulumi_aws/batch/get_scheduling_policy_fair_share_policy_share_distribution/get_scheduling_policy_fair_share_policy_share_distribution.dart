// ignore_for_file: unused_element, unnecessary_cast

class GetSchedulingPolicyFairSharePolicyShareDistribution {
  /// Fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final String shareIdentifier;

  /// Weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final double weightFactor;

  GetSchedulingPolicyFairSharePolicyShareDistribution({
    required this.shareIdentifier,
    required this.weightFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['shareIdentifier'] = shareIdentifier;
    map['weightFactor'] = weightFactor;
    return map;
  }

  factory GetSchedulingPolicyFairSharePolicyShareDistribution.fromMap(
      Map<String, dynamic> map) {
    return GetSchedulingPolicyFairSharePolicyShareDistribution(
      shareIdentifier: map['shareIdentifier'] as String,
      weightFactor: map['weightFactor'] as double,
    );
  }
}

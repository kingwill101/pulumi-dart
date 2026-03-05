// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSchedulingPolicyFairSharePolicyShareDistribution {
  /// Fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final pulumi.Input<String> shareIdentifier;
  /// Weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  final pulumi.Input<double> weightFactor;

  /// Creates a new [GetSchedulingPolicyFairSharePolicyShareDistribution].
  /// [shareIdentifier] Fair share identifier or fair share identifier prefix. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  /// [weightFactor] Weight factor for the fair share identifier. For more information, see [ShareAttributes](https://docs.aws.amazon.com/batch/latest/APIReference/API_ShareAttributes.html).
  GetSchedulingPolicyFairSharePolicyShareDistribution({
    required this.shareIdentifier,
    required this.weightFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareIdentifier': shareIdentifier,
      'weightFactor': weightFactor,
    };
  }

  factory GetSchedulingPolicyFairSharePolicyShareDistribution.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyFairSharePolicyShareDistribution(
      shareIdentifier: pulumi.Input.fromValue(map['shareIdentifier'] as String),
      weightFactor: pulumi.Input.fromValue(map['weightFactor'] as double),
    );
  }
}


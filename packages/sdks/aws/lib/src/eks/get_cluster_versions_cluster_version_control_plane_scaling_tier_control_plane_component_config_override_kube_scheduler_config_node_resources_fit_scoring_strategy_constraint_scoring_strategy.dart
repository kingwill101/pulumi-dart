// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy {
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy].
  /// [allowedValues] Required.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
    );
  }
}

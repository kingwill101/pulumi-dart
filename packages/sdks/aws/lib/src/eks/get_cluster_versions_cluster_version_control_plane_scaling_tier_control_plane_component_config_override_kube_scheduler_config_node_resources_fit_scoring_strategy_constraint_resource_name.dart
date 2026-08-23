// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName {
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName].
  /// [allowedValues] Required.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
    );
  }
}

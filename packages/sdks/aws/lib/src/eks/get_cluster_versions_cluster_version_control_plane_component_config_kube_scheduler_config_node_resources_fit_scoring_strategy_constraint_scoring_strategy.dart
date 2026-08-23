// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy {
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy].
  /// [allowedValues] Required.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintScoringStrategy(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
    );
  }
}

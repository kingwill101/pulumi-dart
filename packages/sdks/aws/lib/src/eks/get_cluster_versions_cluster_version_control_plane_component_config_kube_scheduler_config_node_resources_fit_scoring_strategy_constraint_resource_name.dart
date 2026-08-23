// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName {
  final pulumi.Input<List<String>> allowedValues;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName].
  /// [allowedValues] Required.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceName(
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
    );
  }
}

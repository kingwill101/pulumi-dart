// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyDefaultValueResource {
  final pulumi.Input<String> name;
  final pulumi.Input<int> weight;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyDefaultValueResource].
  /// [name] Required.
  /// [weight] Required.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyDefaultValueResource({
    required this.name,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'weight': weight,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyDefaultValueResource.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeSchedulerConfigNodeResourcesFitScoringStrategyDefaultValueResource(
      name: pulumi.Input.fromValue(map['name'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

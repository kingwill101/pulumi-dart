// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort {
  /// The maximum allowed duration.
  final pulumi.Input<int> max;
  /// The minimum allowed duration.
  final pulumi.Input<int> min;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort].
  /// [max] The maximum allowed duration.
  /// [min] The minimum allowed duration.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMinPort(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}

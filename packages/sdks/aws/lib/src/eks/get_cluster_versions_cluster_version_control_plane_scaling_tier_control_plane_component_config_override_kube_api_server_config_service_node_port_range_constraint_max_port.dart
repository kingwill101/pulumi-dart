// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort {
  /// The maximum allowed duration.
  final pulumi.Input<int> max;
  /// The minimum allowed duration.
  final pulumi.Input<int> min;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort].
  /// [max] The maximum allowed duration.
  /// [min] The minimum allowed duration.
  const GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneScalingTierControlPlaneComponentConfigOverrideKubeApiServerConfigServiceNodePortRangeConstraintMaxPort(
      max: pulumi.Input.fromValue((map['max'] as num).toInt()),
      min: pulumi.Input.fromValue((map['min'] as num).toInt()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue {
  /// The allowed range for the maximum port (`min`, `max`).
  final pulumi.Input<int> maxPort;
  /// The allowed range for the minimum port (`min`, `max`).
  final pulumi.Input<int> minPort;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue].
  /// [maxPort] The allowed range for the maximum port (`min`, `max`).
  /// [minPort] The allowed range for the minimum port (`min`, `max`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue({
    required this.maxPort,
    required this.minPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPort': maxPort,
      'minPort': minPort,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeApiServerConfigServiceNodePortRangeDefaultValue(
      maxPort: pulumi.Input.fromValue((map['maxPort'] as num).toInt()),
      minPort: pulumi.Input.fromValue((map['minPort'] as num).toInt()),
    );
  }
}

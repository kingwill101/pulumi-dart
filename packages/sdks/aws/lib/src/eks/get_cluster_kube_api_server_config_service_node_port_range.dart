// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterKubeApiServerConfigServiceNodePortRange {
  /// The maximum port number in the range.
  final pulumi.Input<int> maxPort;
  /// The minimum port number in the range.
  final pulumi.Input<int> minPort;

  /// Creates a new [GetClusterKubeApiServerConfigServiceNodePortRange].
  /// [maxPort] The maximum port number in the range.
  /// [minPort] The minimum port number in the range.
  const GetClusterKubeApiServerConfigServiceNodePortRange({
    required this.maxPort,
    required this.minPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPort': maxPort,
      'minPort': minPort,
    };
  }

  factory GetClusterKubeApiServerConfigServiceNodePortRange.fromMap(Map<String, dynamic> map) {
    return GetClusterKubeApiServerConfigServiceNodePortRange(
      maxPort: pulumi.Input.fromValue((map['maxPort'] as num).toInt()),
      minPort: pulumi.Input.fromValue((map['minPort'] as num).toInt()),
    );
  }
}

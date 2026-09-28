// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint {
  /// The maximum allowed duration.
  final pulumi.Input<int> max;
  /// The minimum allowed duration.
  final pulumi.Input<int> min;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint].
  /// [max] The maximum allowed duration.
  /// [min] The minimum allowed duration.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}

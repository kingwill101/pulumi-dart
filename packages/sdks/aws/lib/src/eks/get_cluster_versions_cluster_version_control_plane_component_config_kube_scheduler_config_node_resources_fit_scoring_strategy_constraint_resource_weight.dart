// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight {
  /// The maximum allowed duration.
  final pulumi.Input<int> max;
  /// The minimum allowed duration.
  final pulumi.Input<int> min;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight].
  /// [max] The maximum allowed duration.
  /// [min] The minimum allowed duration.
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeSchedulerConfigNodeResourcesFitScoringStrategyConstraintResourceWeight(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}

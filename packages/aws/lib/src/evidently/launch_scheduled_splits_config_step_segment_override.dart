// ignore_for_file: unused_element, unnecessary_cast

class LaunchScheduledSplitsConfigStepSegmentOverride {
  /// Specifies a number indicating the order to use to evaluate segment overrides, if there are more than one. Segment overrides with lower numbers are evaluated first.
  final int evaluationOrder;

  /// The name or ARN of the segment to use.
  final String segment;

  /// The traffic allocation percentages among the feature variations to assign to this segment. This is a set of key-value pairs. The keys are variation names. The values represent the amount of traffic to allocate to that variation for this segment. This is expressed in thousandths of a percent, so a weight of 50000 represents 50% of traffic.
  final Map<String, int> weights;

  /// Creates a new [LaunchScheduledSplitsConfigStepSegmentOverride].
  /// [evaluationOrder] Specifies a number indicating the order to use to evaluate segment overrides, if there are more than one. Segment overrides with lower numbers are evaluated first.
  /// [segment] The name or ARN of the segment to use.
  /// [weights] The traffic allocation percentages among the feature variations to assign to this segment. This is a set of key-value pairs. The keys are variation names. The values represent the amount of traffic to allocate to that variation for this segment. This is expressed in thousandths of a percent, so a weight of 50000 represents 50% of traffic.
  LaunchScheduledSplitsConfigStepSegmentOverride({
    required this.evaluationOrder,
    required this.segment,
    required this.weights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationOrder': evaluationOrder,
      'segment': segment,
      'weights': weights,
    };
  }

  factory LaunchScheduledSplitsConfigStepSegmentOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchScheduledSplitsConfigStepSegmentOverride(
      evaluationOrder: map['evaluationOrder'] as int,
      segment: map['segment'] as String,
      weights: (map['weights'] as Map).cast<String, int>(),
    );
  }
}

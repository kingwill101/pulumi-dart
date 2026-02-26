// ignore_for_file: unused_element, unnecessary_cast

/// Constraints applied to pods.
class MaxPodsConstraintResponse2 {
  /// Constraint enforced on the max num of pods per node.
  final String maxPodsPerNode;

  MaxPodsConstraintResponse2({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory MaxPodsConstraintResponse2.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraintResponse2(
      maxPodsPerNode: map['maxPodsPerNode'] as String,
    );
  }
}

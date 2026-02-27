// ignore_for_file: unused_element, unnecessary_cast

/// Constraints applied to pods.
class MaxPodsConstraintResponseContainerV1beta1 {
  /// Constraint enforced on the max num of pods per node.
  final String maxPodsPerNode;

  MaxPodsConstraintResponseContainerV1beta1({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory MaxPodsConstraintResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MaxPodsConstraintResponseContainerV1beta1(
      maxPodsPerNode: map['maxPodsPerNode'] as String,
    );
  }
}

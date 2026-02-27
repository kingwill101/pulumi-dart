// ignore_for_file: unused_element, unnecessary_cast

/// Constraints applied to pods.
class MaxPodsConstraintContainerV1beta1 {
  /// Constraint enforced on the max num of pods per node.
  final String? maxPodsPerNode;

  MaxPodsConstraintContainerV1beta1({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxPodsPerNodeValue = maxPodsPerNode;
    if (maxPodsPerNodeValue != null) {
      map['maxPodsPerNode'] = maxPodsPerNodeValue;
    }
    return map;
  }

  factory MaxPodsConstraintContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraintContainerV1beta1(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : map['maxPodsPerNode'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Constraints applied to pods.
class MaxPodsConstraint2 {
  /// Constraint enforced on the max num of pods per node.
  final String? maxPodsPerNode;

  MaxPodsConstraint2({
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

  factory MaxPodsConstraint2.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraint2(
      maxPodsPerNode: map['maxPodsPerNode'] == null
          ? null
          : map['maxPodsPerNode'] as String,
    );
  }
}

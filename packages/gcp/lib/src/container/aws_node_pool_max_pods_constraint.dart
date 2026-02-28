// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolMaxPodsConstraint {
  /// The maximum number of pods to schedule on a single node.
  ///
  /// - - -
  final int maxPodsPerNode;

  /// Creates a new [AwsNodePoolMaxPodsConstraint].
  /// [maxPodsPerNode] The maximum number of pods to schedule on a single node.
  AwsNodePoolMaxPodsConstraint({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory AwsNodePoolMaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolMaxPodsConstraint(
      maxPodsPerNode: map['maxPodsPerNode'] as int,
    );
  }
}

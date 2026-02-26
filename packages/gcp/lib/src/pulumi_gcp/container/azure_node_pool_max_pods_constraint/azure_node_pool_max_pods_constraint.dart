// ignore_for_file: unused_element, unnecessary_cast

class AzureNodePoolMaxPodsConstraint {
  /// The maximum number of pods to schedule on a single node.
  ///
  /// - - -
  final int maxPodsPerNode;

  AzureNodePoolMaxPodsConstraint({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxPodsPerNode'] = maxPodsPerNode;
    return map;
  }

  factory AzureNodePoolMaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolMaxPodsConstraint(
      maxPodsPerNode: map['maxPodsPerNode'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).
class NodeLabels {
  /// Map of node label keys and node label values.
  final Map<String, String>? labels;

  /// Creates a new [NodeLabels].
  /// [labels] Map of node label keys and node label values.
  NodeLabels({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory NodeLabels.fromMap(Map<String, dynamic> map) {
    return NodeLabels(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

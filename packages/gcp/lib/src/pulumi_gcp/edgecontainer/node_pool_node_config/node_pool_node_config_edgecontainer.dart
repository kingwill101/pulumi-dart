// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigEdgecontainer {
  /// "The Kubernetes node labels"
  final Map<String, String>? labels;

  NodePoolNodeConfigEdgecontainer({
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

  factory NodePoolNodeConfigEdgecontainer.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigEdgecontainer(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

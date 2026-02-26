// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfig2 {
  /// "The Kubernetes node labels"
  final Map<String, String>? labels;

  NodePoolNodeConfig2({
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

  factory NodePoolNodeConfig2.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig2(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class FargateProfileSelector {
  /// Key-value map of Kubernetes labels for selection.
  final Map<String, String>? labels;

  /// Kubernetes namespace for selection.
  ///
  /// The following arguments are optional:
  final String namespace;

  FargateProfileSelector({
    this.labels,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['namespace'] = namespace;
    return map;
  }

  factory FargateProfileSelector.fromMap(Map<String, dynamic> map) {
    return FargateProfileSelector(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      namespace: map['namespace'] as String,
    );
  }
}

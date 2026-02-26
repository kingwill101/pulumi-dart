// ignore_for_file: unused_element, unnecessary_cast

/// Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
class ResourceLabels2 {
  /// Map of node label keys and node label values.
  final Map<String, String>? labels;

  ResourceLabels2({
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

  factory ResourceLabels2.fromMap(Map<String, dynamic> map) {
    return ResourceLabels2(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

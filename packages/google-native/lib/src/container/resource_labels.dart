// ignore_for_file: unused_element, unnecessary_cast

/// Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
class ResourceLabels {
  /// Map of node label keys and node label values.
  final Map<String, String>? labels;

  /// Creates a new [ResourceLabels].
  /// [labels] Map of node label keys and node label values.
  ResourceLabels({
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

  factory ResourceLabels.fromMap(Map<String, dynamic> map) {
    return ResourceLabels(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

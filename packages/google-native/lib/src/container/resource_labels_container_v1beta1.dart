// ignore_for_file: unused_element, unnecessary_cast

/// Collection of [GCP labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).
class ResourceLabelsContainerV1beta1 {
  /// Map of node label keys and node label values.
  final Map<String, String>? labels;

  /// Creates a new [ResourceLabelsContainerV1beta1].
  /// [labels] Map of node label keys and node label values.
  ResourceLabelsContainerV1beta1({
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

  factory ResourceLabelsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceLabelsContainerV1beta1(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

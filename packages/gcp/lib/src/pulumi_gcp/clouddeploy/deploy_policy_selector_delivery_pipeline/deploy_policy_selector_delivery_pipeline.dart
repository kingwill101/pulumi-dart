// ignore_for_file: unused_element, unnecessary_cast

class DeployPolicySelectorDeliveryPipeline {
  /// ID of the DeliveryPipeline. The value of this field could be one of the following:
  /// - The last segment of a pipeline name
  /// - "*", all delivery pipelines in a location
  final String? id;

  /// DeliveryPipeline labels.
  final Map<String, String>? labels;

  DeployPolicySelectorDeliveryPipeline({
    this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory DeployPolicySelectorDeliveryPipeline.fromMap(
      Map<String, dynamic> map) {
    return DeployPolicySelectorDeliveryPipeline(
      id: map['id'] == null ? null : map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

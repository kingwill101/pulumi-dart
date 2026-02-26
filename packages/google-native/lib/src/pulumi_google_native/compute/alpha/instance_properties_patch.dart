// ignore_for_file: unused_element, unnecessary_cast

/// Represents the change that you want to make to the instance properties.
class InstancePropertiesPatch {
  /// The label key-value pairs that you want to patch onto the instance.
  final Map<String, String>? labels;

  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  final Map<String, String>? metadata;

  InstancePropertiesPatch({
    this.labels,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    return map;
  }

  factory InstancePropertiesPatch.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesPatch(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

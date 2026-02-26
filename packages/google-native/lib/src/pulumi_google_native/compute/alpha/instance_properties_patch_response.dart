// ignore_for_file: unused_element, unnecessary_cast

/// Represents the change that you want to make to the instance properties.
class InstancePropertiesPatchResponse {
  /// The label key-value pairs that you want to patch onto the instance.
  final Map<String, String> labels;

  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  final Map<String, String> metadata;

  InstancePropertiesPatchResponse({
    required this.labels,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['metadata'] = metadata;
    return map;
  }

  factory InstancePropertiesPatchResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesPatchResponse(
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

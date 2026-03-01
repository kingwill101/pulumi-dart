// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerAllInstancesConfig {
  /// The label key-value pairs that you want to patch onto the instance,
  final Map<String, String> labels;

  /// The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata,
  final Map<String, String> metadata;

  /// Creates a new [GetRegionInstanceGroupManagerAllInstancesConfig].
  /// [labels] The label key-value pairs that you want to patch onto the instance,
  /// [metadata] The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata,
  GetRegionInstanceGroupManagerAllInstancesConfig({
    required this.labels,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': labels, 'metadata': metadata};
  }

  factory GetRegionInstanceGroupManagerAllInstancesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceGroupManagerAllInstancesConfig(
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

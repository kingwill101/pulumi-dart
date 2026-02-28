// ignore_for_file: unused_element, unnecessary_cast


class RegionInstanceGroupManagerAllInstancesConfig {
  /// , The label key-value pairs that you want to patch onto the instance.
  ///
  /// - - -
  final Map<String, String>? labels;
  /// , The metadata key-value pairs that you want to patch onto the instance. For more information, see [Project and instance metadata](https://cloud.google.com/compute/docs/metadata#project_and_instance_metadata).
  final Map<String, String>? metadata;

  /// Creates a new [RegionInstanceGroupManagerAllInstancesConfig].
  /// [labels] , The label key-value pairs that you want to patch onto the instance.
  /// [metadata] , The metadata key-value pairs that you want to patch onto the instance. For more information, see [Project and instance metadata](https://cloud.google.com/compute/docs/metadata#project_and_instance_metadata).
  RegionInstanceGroupManagerAllInstancesConfig({
    this.labels,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'metadata': ?metadata,
    };
  }

  factory RegionInstanceGroupManagerAllInstancesConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerAllInstancesConfig(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}


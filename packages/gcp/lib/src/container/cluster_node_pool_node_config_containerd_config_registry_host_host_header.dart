// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final String key;

  /// Configures the header value.
  final List<String> values;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final String key;

  /// Configures the header value.
  final List<String> values;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  ClusterNodeConfigContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHostHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostHeader(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

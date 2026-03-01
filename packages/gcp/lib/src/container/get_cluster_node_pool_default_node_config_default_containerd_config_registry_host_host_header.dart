// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final String key;

  /// Configures the header value.
  final List<String> values;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

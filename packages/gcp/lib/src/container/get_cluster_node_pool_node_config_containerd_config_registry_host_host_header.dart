// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader {
  /// Configures the header key.
  final String key;

  /// Configures the header value.
  final List<String> values;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader].
  /// [key] Configures the header key.
  /// [values] Configures the header value.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

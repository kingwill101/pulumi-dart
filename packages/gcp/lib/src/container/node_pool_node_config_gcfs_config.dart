// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigGcfsConfig {
  /// Whether or not GCFS is enabled
  final bool enabled;

  /// Creates a new [NodePoolNodeConfigGcfsConfig].
  /// [enabled] Whether or not GCFS is enabled
  NodePoolNodeConfigGcfsConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory NodePoolNodeConfigGcfsConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigGcfsConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigConfigConnectorConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigConfigConnectorConfig].
  /// [enabled] Required.
  ClusterAddonsConfigConfigConnectorConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigConfigConnectorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAddonsConfigConfigConnectorConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigConfigConnectorConfig {
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigConfigConnectorConfig].
  /// [enabled] Required.
  GetClusterAddonsConfigConfigConnectorConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigConfigConnectorConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigConfigConnectorConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

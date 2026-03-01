// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGcpFilestoreCsiDriverConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigGcpFilestoreCsiDriverConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGcpFilestoreCsiDriverConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAddonsConfigGcpFilestoreCsiDriverConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

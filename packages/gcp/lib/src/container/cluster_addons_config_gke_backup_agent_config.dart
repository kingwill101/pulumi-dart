// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigGkeBackupAgentConfig {
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigGkeBackupAgentConfig].
  /// [enabled] Required.
  ClusterAddonsConfigGkeBackupAgentConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigGkeBackupAgentConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigGkeBackupAgentConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

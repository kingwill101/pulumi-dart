// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigGkeBackupAgentConfig {
  final bool enabled;

  GetClusterAddonsConfigGkeBackupAgentConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigGkeBackupAgentConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigGkeBackupAgentConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

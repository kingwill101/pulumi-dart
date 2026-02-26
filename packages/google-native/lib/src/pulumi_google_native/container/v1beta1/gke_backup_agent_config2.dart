// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfig2 {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final bool? enabled;

  GkeBackupAgentConfig2({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory GkeBackupAgentConfig2.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfig {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GkeBackupAgentConfig].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  GkeBackupAgentConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GkeBackupAgentConfig.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

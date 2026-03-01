// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfigResponse {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GkeBackupAgentConfigResponse].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  GkeBackupAgentConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GkeBackupAgentConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfigResponse(enabled: map['enabled'] as bool);
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the Backup for GKE Agent.
class GkeBackupAgentConfigContainerV1beta1 {
  /// Whether the Backup for GKE agent is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GkeBackupAgentConfigContainerV1beta1].
  /// [enabled] Whether the Backup for GKE agent is enabled for this cluster.
  GkeBackupAgentConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GkeBackupAgentConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GkeBackupAgentConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Arc Agent properties for the Provisioned clusters.
class ArcAgentProfile {
  /// Indicates whether the Arc agents on the provisioned clusters be upgraded automatically to the latest version. Defaults to Enabled.
  final String? agentAutoUpgrade;
  /// Version of the Arc agents to be installed on the provisioned Provisioned cluster resource
  final String? agentVersion;

  /// Creates a new [ArcAgentProfile].
  /// [agentAutoUpgrade] Indicates whether the Arc agents on the provisioned clusters be upgraded automatically to the latest version. Defaults to Enabled.
  /// [agentVersion] Version of the Arc agents to be installed on the provisioned Provisioned cluster resource
  ArcAgentProfile({
    this.agentAutoUpgrade,
    this.agentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpgrade': ?agentAutoUpgrade,
      'agentVersion': ?agentVersion,
    };
  }

  factory ArcAgentProfile.fromMap(Map<String, dynamic> map) {
    return ArcAgentProfile(
      agentAutoUpgrade: map['agentAutoUpgrade'] == null ? null : map['agentAutoUpgrade'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
    );
  }
}


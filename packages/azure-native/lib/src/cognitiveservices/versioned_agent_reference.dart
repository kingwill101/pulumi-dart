// ignore_for_file: unused_element, unnecessary_cast


/// Type modeling a reference to a version of an agent definition.
class VersionedAgentReference {
  /// Gets the agent's unique identifier within the organization (subscription).
  final String? agentId;
  /// Gets the agent's name (unique within the project/app).
  final String? agentName;
  /// Gets the agent's version (unique for each agent lineage).
  final String? agentVersion;

  /// Creates a new [VersionedAgentReference].
  /// [agentId] Gets the agent's unique identifier within the organization (subscription).
  /// [agentName] Gets the agent's name (unique within the project/app).
  /// [agentVersion] Gets the agent's version (unique for each agent lineage).
  VersionedAgentReference({
    this.agentId,
    this.agentName,
    this.agentVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentName': ?agentName,
      'agentVersion': ?agentVersion,
    };
  }

  factory VersionedAgentReference.fromMap(Map<String, dynamic> map) {
    return VersionedAgentReference(
      agentId: map['agentId'] == null ? null : map['agentId'] as String,
      agentName: map['agentName'] == null ? null : map['agentName'] as String,
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
    );
  }
}


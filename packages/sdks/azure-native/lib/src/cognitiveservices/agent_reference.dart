// ignore_for_file: unused_element, unnecessary_cast


/// Type modeling a reference to a version of an agent definition.
class AgentReference {
  /// Gets the agent's unique identifier within the organization (subscription).
  final String? agentId;
  /// Gets the agent's name (unique within the project/app).
  final String? agentName;

  /// Creates a new [AgentReference].
  /// [agentId] Gets the agent's unique identifier within the organization (subscription).
  /// [agentName] Gets the agent's name (unique within the project/app).
  AgentReference({
    this.agentId,
    this.agentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentName': ?agentName,
    };
  }

  factory AgentReference.fromMap(Map<String, dynamic> map) {
    return AgentReference(
      agentId: map['agentId'] == null ? null : map['agentId'] as String,
      agentName: map['agentName'] == null ? null : map['agentName'] as String,
    );
  }
}


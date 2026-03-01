// ignore_for_file: unused_element, unnecessary_cast


class GetAgentsAgent {
  /// The agent id.
  final String agentId;
  /// Service space signature, which is used when PAAS interface specifies the service space.
  final String agentKey;
  /// The name of the agent.
  final String agentName;
  /// ID of the agent.
  final String id;

  /// Creates a new [GetAgentsAgent].
  /// [agentId] The agent id.
  /// [agentKey] Service space signature, which is used when PAAS interface specifies the service space.
  /// [agentName] The name of the agent.
  /// [id] ID of the agent.
  GetAgentsAgent({
    required this.agentId,
    required this.agentKey,
    required this.agentName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentKey': agentKey,
      'agentName': agentName,
      'id': id,
    };
  }

  factory GetAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetAgentsAgent(
      agentId: map['agentId'] as String,
      agentKey: map['agentKey'] as String,
      agentName: map['agentName'] as String,
      id: map['id'] as String,
    );
  }
}


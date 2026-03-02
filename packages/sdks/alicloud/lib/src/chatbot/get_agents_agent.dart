// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentsAgent {
  /// The agent id.
  final pulumi.Input<String> agentId;
  /// Service space signature, which is used when PAAS interface specifies the service space.
  final pulumi.Input<String> agentKey;
  /// The name of the agent.
  final pulumi.Input<String> agentName;
  /// ID of the agent.
  final pulumi.Input<String> id;

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
      agentId: (map['agentId'] as String).input(),
      agentKey: (map['agentKey'] as String).input(),
      agentName: (map['agentName'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}


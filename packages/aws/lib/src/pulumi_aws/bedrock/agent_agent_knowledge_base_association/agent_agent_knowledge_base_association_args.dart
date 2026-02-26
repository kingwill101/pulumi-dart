// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_agent_knowledge_base_association_timeouts/agent_agent_knowledge_base_association_timeouts.dart';

/// The set of arguments for AgentAgentKnowledgeBaseAssociation.
class AgentAgentKnowledgeBaseAssociationArgs {
  /// Unique identifier of the agent with which you want to associate the knowledge base.
  final Input<String> agentId;

  /// Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  final Input<String>? agentVersion;

  /// Description of what the agent should use the knowledge base for.
  final Input<String> description;

  /// Unique identifier of the knowledge base to associate with the agent.
  final Input<String> knowledgeBaseId;

  /// Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final Input<String> knowledgeBaseState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<AgentAgentKnowledgeBaseAssociationTimeouts>? timeouts;

  AgentAgentKnowledgeBaseAssociationArgs({
    required this.agentId,
    this.agentVersion,
    required this.description,
    required this.knowledgeBaseId,
    required this.knowledgeBaseState,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final agentVersionValue = agentVersion;
    if (agentVersionValue != null) {
      map['agentVersion'] = agentVersionValue;
    }
    map['description'] = description;
    map['knowledgeBaseId'] = knowledgeBaseId;
    map['knowledgeBaseState'] = knowledgeBaseState;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          AgentAgentKnowledgeBaseAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentKnowledgeBaseAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentKnowledgeBaseAssociationArgs(
      agentId: Input.asInput<String>(map['agentId']),
      agentVersion: Input.asOptionalInput<String>(map['agentVersion']),
      description: Input.asInput<String>(map['description']),
      knowledgeBaseId: Input.asInput<String>(map['knowledgeBaseId']),
      knowledgeBaseState: Input.asInput<String>(map['knowledgeBaseState']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts:
          Input.asOptionalInput<AgentAgentKnowledgeBaseAssociationTimeouts>(
              map['timeouts']),
    );
  }
}

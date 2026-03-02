// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_knowledge_base_association_timeouts.dart';

/// Input properties used for looking up and filtering AgentAgentKnowledgeBaseAssociation resources.
class AgentAgentKnowledgeBaseAssociationState {
  /// Unique identifier of the agent with which you want to associate the knowledge base.
  final pulumi.Input<String>? agentId;
  /// Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  final pulumi.Input<String>? agentVersion;
  /// Description of what the agent should use the knowledge base for.
  final pulumi.Input<String>? description;
  /// Unique identifier of the knowledge base to associate with the agent.
  final pulumi.Input<String>? knowledgeBaseId;
  /// Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? knowledgeBaseState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentAgentKnowledgeBaseAssociationTimeouts>? timeouts;

  /// Creates a new [AgentAgentKnowledgeBaseAssociationState].
  /// [agentId] Unique identifier of the agent with which you want to associate the knowledge base.
  /// [agentVersion] Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  /// [description] Description of what the agent should use the knowledge base for.
  /// [knowledgeBaseId] Unique identifier of the knowledge base to associate with the agent.
  /// [knowledgeBaseState] Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  AgentAgentKnowledgeBaseAssociationState({
    this.agentId,
    this.agentVersion,
    this.description,
    this.knowledgeBaseId,
    this.knowledgeBaseState,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentVersion': ?agentVersion,
      'description': ?description,
      'knowledgeBaseId': ?knowledgeBaseId,
      'knowledgeBaseState': ?knowledgeBaseState,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentAgentKnowledgeBaseAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentKnowledgeBaseAssociationState.fromMap(Map<String, dynamic> map) {
    return AgentAgentKnowledgeBaseAssociationState(
      agentId: map['agentId'] == null ? null : ((map['agentId'] as String).input()).input(),
      agentVersion: map['agentVersion'] == null ? null : ((map['agentVersion'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      knowledgeBaseId: map['knowledgeBaseId'] == null ? null : ((map['knowledgeBaseId'] as String).input()).input(),
      knowledgeBaseState: map['knowledgeBaseState'] == null ? null : ((map['knowledgeBaseState'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentAgentKnowledgeBaseAssociationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


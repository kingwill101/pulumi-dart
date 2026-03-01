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
    pulumi.Output<String>? agentId,
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? knowledgeBaseId,
    pulumi.Output<String>? knowledgeBaseState,
    pulumi.Output<String>? region,
    pulumi.Output<AgentAgentKnowledgeBaseAssociationTimeouts>? timeouts,
  }) :
      agentId = pulumi.Input.asOptionalInput<String>(agentId),
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      knowledgeBaseId = pulumi.Input.asOptionalInput<String>(knowledgeBaseId),
      knowledgeBaseState = pulumi.Input.asOptionalInput<String>(knowledgeBaseState),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<AgentAgentKnowledgeBaseAssociationTimeouts>(timeouts);

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
      agentId: map['agentId'] == null ? null : pulumi.Output.create<String>(map['agentId'] as String),
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      knowledgeBaseId: map['knowledgeBaseId'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseId'] as String),
      knowledgeBaseState: map['knowledgeBaseState'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseState'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentAgentKnowledgeBaseAssociationTimeouts>(AgentAgentKnowledgeBaseAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


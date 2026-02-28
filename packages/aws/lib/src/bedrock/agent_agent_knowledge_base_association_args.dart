// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_knowledge_base_association_timeouts.dart';

/// {@template pulumi_bedrock_agent_agent_knowledge_base_association_agent_agent_knowledge_base_association_args_doc}
/// The set of arguments for AgentAgentKnowledgeBaseAssociation.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_agent_knowledge_base_association_agent_agent_knowledge_base_association_args_doc}
class AgentAgentKnowledgeBaseAssociationArgs {
  /// Unique identifier of the agent with which you want to associate the knowledge base.
  final pulumi.Input<String> agentId;

  /// Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  final pulumi.Input<String>? agentVersion;

  /// Description of what the agent should use the knowledge base for.
  final pulumi.Input<String> description;

  /// Unique identifier of the knowledge base to associate with the agent.
  final pulumi.Input<String> knowledgeBaseId;

  /// Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> knowledgeBaseState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AgentAgentKnowledgeBaseAssociationTimeouts>? timeouts;

  /// Creates a new [AgentAgentKnowledgeBaseAssociationArgs].
  /// [agentId] Unique identifier of the agent with which you want to associate the knowledge base.
  /// [agentVersion] Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  /// [description] Description of what the agent should use the knowledge base for.
  /// [knowledgeBaseId] Unique identifier of the knowledge base to associate with the agent.
  /// [knowledgeBaseState] Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  AgentAgentKnowledgeBaseAssociationArgs({
    required String agentId,
    String? agentVersion,
    required String description,
    required String knowledgeBaseId,
    required String knowledgeBaseState,
    String? region,
    AgentAgentKnowledgeBaseAssociationTimeouts? timeouts,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
        description = pulumi.Input.asInput<String>(description),
        knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
        knowledgeBaseState = pulumi.Input.asInput<String>(knowledgeBaseState),
        region = pulumi.Input.asOptionalInput<String>(region),
        timeouts = pulumi.Input.asOptionalInput<
            AgentAgentKnowledgeBaseAssociationTimeouts>(timeouts);

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentAgentKnowledgeBaseAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentAgentKnowledgeBaseAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentKnowledgeBaseAssociationArgs(
      agentId: map['agentId'] as String,
      agentVersion:
          map['agentVersion'] == null ? null : map['agentVersion'] as String,
      description: map['description'] as String,
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      knowledgeBaseState: map['knowledgeBaseState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : AgentAgentKnowledgeBaseAssociationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

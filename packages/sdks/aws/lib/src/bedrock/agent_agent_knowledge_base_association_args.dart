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
    required this.agentId,
    this.agentVersion,
    required this.description,
    required this.knowledgeBaseId,
    required this.knowledgeBaseState,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentVersion': ?agentVersion,
      'description': description,
      'knowledgeBaseId': knowledgeBaseId,
      'knowledgeBaseState': knowledgeBaseState,
      'region': ?region,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AgentAgentKnowledgeBaseAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentAgentKnowledgeBaseAssociationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentAgentKnowledgeBaseAssociationArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      agentVersion: (() {
        final guardedValue = map['agentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      knowledgeBaseState: pulumi.Input.fromValue(
        map['knowledgeBaseState'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentAgentKnowledgeBaseAssociationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

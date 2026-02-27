import 'package:pulumi/pulumi.dart';
import '../agent_agent_knowledge_base_association_timeouts/agent_agent_knowledge_base_association_timeouts.dart';
import 'agent_agent_knowledge_base_association_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent Knowledge Base Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent Knowledge Base Association using the agent ID, the agent version, and the knowledge base ID separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentKnowledgeBaseAssociation:AgentAgentKnowledgeBaseAssociation example GGRRAED6JP,DRAFT,EMDPPAYPZI
/// ```
class AgentAgentKnowledgeBaseAssociation extends CustomResource {
  /// Unique identifier of the agent with which you want to associate the knowledge base.
  late final Output<String> agentId;

  /// Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  late final Output<String> agentVersion;

  /// Description of what the agent should use the knowledge base for.
  late final Output<String> description;

  /// Unique identifier of the knowledge base to associate with the agent.
  late final Output<String> knowledgeBaseId;

  /// Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  late final Output<String> knowledgeBaseState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<AgentAgentKnowledgeBaseAssociationTimeouts?> timeouts;

  AgentAgentKnowledgeBaseAssociation(
    String name, {
    AgentAgentKnowledgeBaseAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentKnowledgeBaseAssociation:AgentAgentKnowledgeBaseAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.description = registerOutput<String>('description');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.knowledgeBaseState = registerOutput<String>('knowledgeBaseState');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<AgentAgentKnowledgeBaseAssociationTimeouts?>('timeouts');
  }
}

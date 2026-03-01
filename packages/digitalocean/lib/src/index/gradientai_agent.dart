import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_agent_guardrail.dart';
import 'gradientai_agent_anthropic_api_key.dart';
import 'gradientai_agent_api_key.dart';
import 'gradientai_agent_api_key_info.dart';
import 'gradientai_agent_args.dart';
import 'gradientai_agent_chatbot.dart';
import 'gradientai_agent_chatbot_identifier.dart';
import 'gradientai_agent_child_agent.dart';
import 'gradientai_agent_deployment.dart';
import 'gradientai_agent_function.dart';
import 'gradientai_agent_knowledge_base.dart';
import 'gradientai_agent_model.dart';
import 'gradientai_agent_open_ai_api_key.dart';
import 'gradientai_agent_parent_agent.dart';
import 'gradientai_agent_template.dart';

class GradientaiAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<GradientaiAgentAgentGuardrail>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<GradientaiAgentAnthropicApiKey>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<GradientaiAgentApiKeyInfo>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<GradientaiAgentApiKey>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<GradientaiAgentChatbotIdentifier>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<GradientaiAgentChatbot>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<GradientaiAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<GradientaiAgentDeployment>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<GradientaiAgentFunction>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<GradientaiAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<GradientaiAgentModel>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<GradientaiAgentOpenAiApiKey>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<GradientaiAgentParentAgent>> parentAgents;
  /// Project ID of the Agent
  late final pulumi.Output<String> projectId;
  /// Indicates if the agent should provide citations in responses
  late final pulumi.Output<bool?> provideCitations;
  /// Region where the Agent is deployed
  late final pulumi.Output<String> region;
  /// Retrieval method used
  late final pulumi.Output<String?> retrievalMethod;
  /// Timestamp when the route was created
  late final pulumi.Output<String> routeCreatedAt;
  /// User who created the route
  late final pulumi.Output<String?> routeCreatedBy;
  /// Route name
  late final pulumi.Output<String?> routeName;
  /// Route UUID
  late final pulumi.Output<String?> routeUuid;
  /// List of Tags
  late final pulumi.Output<List<String>?> tags;
  /// Agent temperature setting
  late final pulumi.Output<double?> temperature;
  /// Agent Template
  late final pulumi.Output<List<GradientaiAgentTemplate>?> templates;
  /// Top P sampling parameter
  late final pulumi.Output<double?> topP;
  /// Timestamp when the Agent was updated
  late final pulumi.Output<String> updatedAt;
  /// URL for the Agent
  late final pulumi.Output<String?> url;
  /// User ID linked with the Agent
  late final pulumi.Output<String?> userId;

  /// Creates a new [GradientaiAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgent]. {@macro pulumi_index_gradientai_agent_gradientai_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgent(
    String name, {
    GradientaiAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgent:GradientaiAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentGuardrails = registerOutput<List<GradientaiAgentAgentGuardrail>?>('agentGuardrails');
    this.anthropicApiKeys = registerOutput<List<GradientaiAgentAnthropicApiKey>?>('anthropicApiKeys');
    this.anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    this.apiKeyInfos = registerOutput<List<GradientaiAgentApiKeyInfo>?>('apiKeyInfos');
    this.apiKeys = registerOutput<List<GradientaiAgentApiKey>?>('apiKeys');
    this.chatbotIdentifiers = registerOutput<List<GradientaiAgentChatbotIdentifier>?>('chatbotIdentifiers');
    this.chatbots = registerOutput<List<GradientaiAgentChatbot>?>('chatbots');
    this.childAgents = registerOutput<List<GradientaiAgentChildAgent>>('childAgents');
    this.createdAt = registerOutput<String?>('createdAt');
    this.deployments = registerOutput<List<GradientaiAgentDeployment>?>('deployments');
    this.description = registerOutput<String?>('description');
    this.functions = registerOutput<List<GradientaiAgentFunction>?>('functions');
    this.ifCase = registerOutput<String?>('ifCase');
    this.instruction = registerOutput<String>('instruction');
    this.k = registerOutput<int?>('k');
    this.knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids');
    this.knowledgeBases = registerOutput<List<GradientaiAgentKnowledgeBase>>('knowledgeBases');
    this.maxTokens = registerOutput<int?>('maxTokens');
    this.modelUuid = registerOutput<String>('modelUuid');
    this.models = registerOutput<List<GradientaiAgentModel>>('models');
    this.name = registerOutput<String>('name');
    this.openAiApiKeys = registerOutput<List<GradientaiAgentOpenAiApiKey>?>('openAiApiKeys');
    this.openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    this.parentAgents = registerOutput<List<GradientaiAgentParentAgent>>('parentAgents');
    this.projectId = registerOutput<String>('projectId');
    this.provideCitations = registerOutput<bool?>('provideCitations');
    this.region = registerOutput<String>('region');
    this.retrievalMethod = registerOutput<String?>('retrievalMethod');
    this.routeCreatedAt = registerOutput<String>('routeCreatedAt');
    this.routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    this.routeName = registerOutput<String?>('routeName');
    this.routeUuid = registerOutput<String?>('routeUuid');
    this.tags = registerOutput<List<String>?>('tags');
    this.temperature = registerOutput<double?>('temperature');
    this.templates = registerOutput<List<GradientaiAgentTemplate>?>('templates');
    this.topP = registerOutput<double?>('topP');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.url = registerOutput<String?>('url');
    this.userId = registerOutput<String?>('userId');
  }
}

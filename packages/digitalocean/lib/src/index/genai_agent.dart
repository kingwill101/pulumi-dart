import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_agent_guardrail.dart';
import 'genai_agent_anthropic_api_key.dart';
import 'genai_agent_api_key.dart';
import 'genai_agent_api_key_info.dart';
import 'genai_agent_args.dart';
import 'genai_agent_chatbot.dart';
import 'genai_agent_chatbot_identifier.dart';
import 'genai_agent_child_agent.dart';
import 'genai_agent_deployment.dart';
import 'genai_agent_function.dart';
import 'genai_agent_knowledge_base.dart';
import 'genai_agent_model.dart';
import 'genai_agent_open_ai_api_key.dart';
import 'genai_agent_parent_agent.dart';
import 'genai_agent_template.dart';

class GenaiAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<GenaiAgentAgentGuardrail>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<GenaiAgentAnthropicApiKey>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<GenaiAgentApiKeyInfo>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<GenaiAgentApiKey>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<GenaiAgentChatbotIdentifier>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<GenaiAgentChatbot>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<GenaiAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<GenaiAgentDeployment>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<GenaiAgentFunction>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<GenaiAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<GenaiAgentModel>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<GenaiAgentOpenAiApiKey>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<GenaiAgentParentAgent>> parentAgents;
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
  late final pulumi.Output<List<GenaiAgentTemplate>?> templates;
  /// Top P sampling parameter
  late final pulumi.Output<double?> topP;
  /// Timestamp when the Agent was updated
  late final pulumi.Output<String> updatedAt;
  /// URL for the Agent
  late final pulumi.Output<String?> url;
  /// User ID linked with the Agent
  late final pulumi.Output<String?> userId;

  /// Creates a new [GenaiAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiAgent]. {@macro pulumi_index_genai_agent_genai_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiAgent(
    String name, {
    GenaiAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgent:GenaiAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentGuardrails = registerOutput<List<GenaiAgentAgentGuardrail>?>('agentGuardrails');
    this.anthropicApiKeys = registerOutput<List<GenaiAgentAnthropicApiKey>?>('anthropicApiKeys');
    this.anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    this.apiKeyInfos = registerOutput<List<GenaiAgentApiKeyInfo>?>('apiKeyInfos');
    this.apiKeys = registerOutput<List<GenaiAgentApiKey>?>('apiKeys');
    this.chatbotIdentifiers = registerOutput<List<GenaiAgentChatbotIdentifier>?>('chatbotIdentifiers');
    this.chatbots = registerOutput<List<GenaiAgentChatbot>?>('chatbots');
    this.childAgents = registerOutput<List<GenaiAgentChildAgent>>('childAgents');
    this.createdAt = registerOutput<String?>('createdAt');
    this.deployments = registerOutput<List<GenaiAgentDeployment>?>('deployments');
    this.description = registerOutput<String?>('description');
    this.functions = registerOutput<List<GenaiAgentFunction>?>('functions');
    this.ifCase = registerOutput<String?>('ifCase');
    this.instruction = registerOutput<String>('instruction');
    this.k = registerOutput<int?>('k');
    this.knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids');
    this.knowledgeBases = registerOutput<List<GenaiAgentKnowledgeBase>>('knowledgeBases');
    this.maxTokens = registerOutput<int?>('maxTokens');
    this.modelUuid = registerOutput<String>('modelUuid');
    this.models = registerOutput<List<GenaiAgentModel>>('models');
    this.name = registerOutput<String>('name');
    this.openAiApiKeys = registerOutput<List<GenaiAgentOpenAiApiKey>?>('openAiApiKeys');
    this.openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    this.parentAgents = registerOutput<List<GenaiAgentParentAgent>>('parentAgents');
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
    this.templates = registerOutput<List<GenaiAgentTemplate>?>('templates');
    this.topP = registerOutput<double?>('topP');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.url = registerOutput<String?>('url');
    this.userId = registerOutput<String?>('userId');
  }
}

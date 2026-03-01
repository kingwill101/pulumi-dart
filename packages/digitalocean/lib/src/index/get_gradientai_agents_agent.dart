// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_agent_agent_guardrail.dart';
import 'get_gradientai_agents_agent_anthropic_api_key.dart';
import 'get_gradientai_agents_agent_api_key.dart';
import 'get_gradientai_agents_agent_api_key_info.dart';
import 'get_gradientai_agents_agent_chatbot.dart';
import 'get_gradientai_agents_agent_chatbot_identifier.dart';
import 'get_gradientai_agents_agent_child_agent.dart';
import 'get_gradientai_agents_agent_deployment.dart';
import 'get_gradientai_agents_agent_function.dart';
import 'get_gradientai_agents_agent_knowledge_base.dart';
import 'get_gradientai_agents_agent_model.dart';
import 'get_gradientai_agents_agent_open_ai_api_key.dart';
import 'get_gradientai_agents_agent_parent_agent.dart';
import 'get_gradientai_agents_agent_template.dart';

class GetGradientaiAgentsAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final List<GetGradientaiAgentsAgentAgentGuardrail> agentGuardrails;
  /// ID of the Agent to retrieve
  final String agentId;
  /// Anthropic API Key information
  final List<GetGradientaiAgentsAgentAnthropicApiKey> anthropicApiKeys;
  /// List of API Key Infos
  final List<GetGradientaiAgentsAgentApiKeyInfo> apiKeyInfos;
  /// List of API Keys
  final List<GetGradientaiAgentsAgentApiKey> apiKeys;
  /// List of Chatbot Identifiers
  final List<GetGradientaiAgentsAgentChatbotIdentifier> chatbotIdentifiers;
  /// ChatBot configuration
  final List<GetGradientaiAgentsAgentChatbot> chatbots;
  /// List of child agents
  final List<GetGradientaiAgentsAgentChildAgent> childAgents;
  /// Timestamp when the Agent was created
  final String createdAt;
  /// List of API Key Infos
  final List<GetGradientaiAgentsAgentDeployment> deployments;
  /// Description for the Agent
  final String description;
  /// List of API Key Infos
  final List<GetGradientaiAgentsAgentFunction> functions;
  /// If case condition
  final String ifCase;
  /// Instruction for the Agent
  final String instruction;
  /// K value
  final int k;
  /// List of Knowledge Bases
  final List<GetGradientaiAgentsAgentKnowledgeBase> knowledgeBases;
  /// Maximum tokens allowed
  final int maxTokens;
  /// Model UUID of the Agent
  final String modelUuid;
  /// Model of the Agent
  final List<GetGradientaiAgentsAgentModel> models;
  /// Name of the Agent
  final String name;
  /// OpenAI API Key information
  final List<GetGradientaiAgentsAgentOpenAiApiKey> openAiApiKeys;
  /// List of parent agents
  final List<GetGradientaiAgentsAgentParentAgent> parentAgents;
  /// Project ID of the Agent
  final String projectId;
  /// Region where the Agent is deployed
  final String region;
  /// Retrieval method used
  final String retrievalMethod;
  /// Timestamp when the route was created
  final String routeCreatedAt;
  /// User who created the route
  final String routeCreatedBy;
  /// Route name
  final String routeName;
  /// Route UUID
  final String routeUuid;
  /// List of Tags
  final List<String> tags;
  /// Agent temperature setting
  final double temperature;
  /// Agent Template
  final List<GetGradientaiAgentsAgentTemplate> templates;
  /// Top P sampling parameter
  final double topP;
  /// Timestamp when the Agent was updated
  final String updatedAt;
  /// URL for the Agent
  final String url;
  /// User ID linked with the Agent
  final String userId;

  /// Creates a new [GetGradientaiAgentsAgent].
  /// [agentGuardrails] AgentGuardrail represents a Guardrail attached to Gen AI Agent
  /// [agentId] ID of the Agent to retrieve
  /// [anthropicApiKeys] Anthropic API Key information
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [childAgents] List of child agents
  /// [createdAt] Timestamp when the Agent was created
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [functions] List of API Key Infos
  /// [ifCase] If case condition
  /// [instruction] Instruction for the Agent
  /// [k] K value
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [modelUuid] Model UUID of the Agent
  /// [models] Model of the Agent
  /// [name] Name of the Agent
  /// [openAiApiKeys] OpenAI API Key information
  /// [parentAgents] List of parent agents
  /// [projectId] Project ID of the Agent
  /// [region] Region where the Agent is deployed
  /// [retrievalMethod] Retrieval method used
  /// [routeCreatedAt] Timestamp when the route was created
  /// [routeCreatedBy] User who created the route
  /// [routeName] Route name
  /// [routeUuid] Route UUID
  /// [tags] List of Tags
  /// [temperature] Agent temperature setting
  /// [templates] Agent Template
  /// [topP] Top P sampling parameter
  /// [updatedAt] Timestamp when the Agent was updated
  /// [url] URL for the Agent
  /// [userId] User ID linked with the Agent
  GetGradientaiAgentsAgent({
    required this.agentGuardrails,
    required this.agentId,
    required this.anthropicApiKeys,
    required this.apiKeyInfos,
    required this.apiKeys,
    required this.chatbotIdentifiers,
    required this.chatbots,
    required this.childAgents,
    required this.createdAt,
    required this.deployments,
    required this.description,
    required this.functions,
    required this.ifCase,
    required this.instruction,
    required this.k,
    required this.knowledgeBases,
    required this.maxTokens,
    required this.modelUuid,
    required this.models,
    required this.name,
    required this.openAiApiKeys,
    required this.parentAgents,
    required this.projectId,
    required this.region,
    required this.retrievalMethod,
    required this.routeCreatedAt,
    required this.routeCreatedBy,
    required this.routeName,
    required this.routeUuid,
    required this.tags,
    required this.temperature,
    required this.templates,
    required this.topP,
    required this.updatedAt,
    required this.url,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': pulumi.Input.encodeList<GetGradientaiAgentsAgentAgentGuardrail, Map<String, dynamic>>(agentGuardrails, (value) => value.toMap()),
      'agentId': agentId,
      'anthropicApiKeys': pulumi.Input.encodeList<GetGradientaiAgentsAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys, (value) => value.toMap()),
      'apiKeyInfos': pulumi.Input.encodeList<GetGradientaiAgentsAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos, (value) => value.toMap()),
      'apiKeys': pulumi.Input.encodeList<GetGradientaiAgentsAgentApiKey, Map<String, dynamic>>(apiKeys, (value) => value.toMap()),
      'chatbotIdentifiers': pulumi.Input.encodeList<GetGradientaiAgentsAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers, (value) => value.toMap()),
      'chatbots': pulumi.Input.encodeList<GetGradientaiAgentsAgentChatbot, Map<String, dynamic>>(chatbots, (value) => value.toMap()),
      'childAgents': pulumi.Input.encodeList<GetGradientaiAgentsAgentChildAgent, Map<String, dynamic>>(childAgents, (value) => value.toMap()),
      'createdAt': createdAt,
      'deployments': pulumi.Input.encodeList<GetGradientaiAgentsAgentDeployment, Map<String, dynamic>>(deployments, (value) => value.toMap()),
      'description': description,
      'functions': pulumi.Input.encodeList<GetGradientaiAgentsAgentFunction, Map<String, dynamic>>(functions, (value) => value.toMap()),
      'ifCase': ifCase,
      'instruction': instruction,
      'k': k,
      'knowledgeBases': pulumi.Input.encodeList<GetGradientaiAgentsAgentKnowledgeBase, Map<String, dynamic>>(knowledgeBases, (value) => value.toMap()),
      'maxTokens': maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.encodeList<GetGradientaiAgentsAgentModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'openAiApiKeys': pulumi.Input.encodeList<GetGradientaiAgentsAgentOpenAiApiKey, Map<String, dynamic>>(openAiApiKeys, (value) => value.toMap()),
      'parentAgents': pulumi.Input.encodeList<GetGradientaiAgentsAgentParentAgent, Map<String, dynamic>>(parentAgents, (value) => value.toMap()),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': routeCreatedBy,
      'routeName': routeName,
      'routeUuid': routeUuid,
      'tags': tags,
      'temperature': temperature,
      'templates': pulumi.Input.encodeList<GetGradientaiAgentsAgentTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
      'topP': topP,
      'updatedAt': updatedAt,
      'url': url,
      'userId': userId,
    };
  }

  factory GetGradientaiAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgent(
      agentGuardrails: pulumi.Input.decodeList<GetGradientaiAgentsAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGradientaiAgentsAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] as String,
      anthropicApiKeys: pulumi.Input.decodeList<GetGradientaiAgentsAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGradientaiAgentsAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: pulumi.Input.decodeList<GetGradientaiAgentsAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGradientaiAgentsAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: pulumi.Input.decodeList<GetGradientaiAgentsAgentApiKey>(map['apiKeys'], (value) => GetGradientaiAgentsAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: pulumi.Input.decodeList<GetGradientaiAgentsAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGradientaiAgentsAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: pulumi.Input.decodeList<GetGradientaiAgentsAgentChatbot>(map['chatbots'], (value) => GetGradientaiAgentsAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      childAgents: pulumi.Input.decodeList<GetGradientaiAgentsAgentChildAgent>(map['childAgents'], (value) => GetGradientaiAgentsAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deployments: pulumi.Input.decodeList<GetGradientaiAgentsAgentDeployment>(map['deployments'], (value) => GetGradientaiAgentsAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      functions: pulumi.Input.decodeList<GetGradientaiAgentsAgentFunction>(map['functions'], (value) => GetGradientaiAgentsAgentFunction.fromMap((value as Map).cast<String, dynamic>())),
      ifCase: map['ifCase'] as String,
      instruction: map['instruction'] as String,
      k: map['k'] as int,
      knowledgeBases: pulumi.Input.decodeList<GetGradientaiAgentsAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGradientaiAgentsAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] as int,
      modelUuid: map['modelUuid'] as String,
      models: pulumi.Input.decodeList<GetGradientaiAgentsAgentModel>(map['models'], (value) => GetGradientaiAgentsAgentModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openAiApiKeys: pulumi.Input.decodeList<GetGradientaiAgentsAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGradientaiAgentsAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      parentAgents: pulumi.Input.decodeList<GetGradientaiAgentsAgentParentAgent>(map['parentAgents'], (value) => GetGradientaiAgentsAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      retrievalMethod: map['retrievalMethod'] as String,
      routeCreatedAt: map['routeCreatedAt'] as String,
      routeCreatedBy: map['routeCreatedBy'] as String,
      routeName: map['routeName'] as String,
      routeUuid: map['routeUuid'] as String,
      tags: (map['tags'] as List).cast<String>(),
      temperature: map['temperature'] as double,
      templates: pulumi.Input.decodeList<GetGradientaiAgentsAgentTemplate>(map['templates'], (value) => GetGradientaiAgentsAgentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      topP: map['topP'] as double,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] as String,
      userId: map['userId'] as String,
    );
  }
}


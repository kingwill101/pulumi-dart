// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_by_openai_api_key_agent_agent_guardrail.dart';
import 'get_genai_agents_by_openai_api_key_agent_anthropic_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_api_key_info.dart';
import 'get_genai_agents_by_openai_api_key_agent_chatbot.dart';
import 'get_genai_agents_by_openai_api_key_agent_chatbot_identifier.dart';
import 'get_genai_agents_by_openai_api_key_agent_child_agent.dart';
import 'get_genai_agents_by_openai_api_key_agent_deployment.dart';
import 'get_genai_agents_by_openai_api_key_agent_function.dart';
import 'get_genai_agents_by_openai_api_key_agent_knowledge_base.dart';
import 'get_genai_agents_by_openai_api_key_agent_model.dart';
import 'get_genai_agents_by_openai_api_key_agent_open_ai_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_parent_agent.dart';
import 'get_genai_agents_by_openai_api_key_agent_template.dart';

class GetGenaiAgentsByOpenaiApiKeyAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final List<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>? agentGuardrails;
  /// ID of the Agent to retrieve
  final String agentId;
  /// Anthropic API Key information
  final List<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>? anthropicApiKeys;
  /// List of API Key Infos
  final List<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>? apiKeyInfos;
  /// List of API Keys
  final List<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>? apiKeys;
  /// List of Chatbot Identifiers
  final List<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>? chatbotIdentifiers;
  /// ChatBot configuration
  final List<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>? chatbots;
  /// List of child agents
  final List<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent> childAgents;
  /// Timestamp when the Agent was created
  final String createdAt;
  /// List of API Key Infos
  final List<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>? deployments;
  /// Description for the Agent
  final String? description;
  /// List of API Key Infos
  final List<GetGenaiAgentsByOpenaiApiKeyAgentFunction>? functions;
  /// If case condition
  final String? ifCase;
  /// Instruction for the Agent
  final String instruction;
  /// K value
  final int? k;
  /// List of Knowledge Bases
  final List<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>? knowledgeBases;
  /// Maximum tokens allowed
  final int? maxTokens;
  /// Model UUID of the Agent
  final String modelUuid;
  /// Model of the Agent
  final List<GetGenaiAgentsByOpenaiApiKeyAgentModel> models;
  /// Name of the Agent
  final String name;
  /// OpenAI API Key information
  final List<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>? openAiApiKeys;
  /// List of parent agents
  final List<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent> parentAgents;
  /// Project ID of the Agent
  final String projectId;
  /// Region where the Agent is deployed
  final String region;
  /// Retrieval method used
  final String? retrievalMethod;
  /// Timestamp when the route was created
  final String routeCreatedAt;
  /// User who created the route
  final String? routeCreatedBy;
  /// Route name
  final String? routeName;
  /// Route UUID
  final String? routeUuid;
  /// List of Tags
  final List<String>? tags;
  /// Agent temperature setting
  final double? temperature;
  /// Agent Template
  final List<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>? templates;
  /// Top P sampling parameter
  final double? topP;
  /// Timestamp when the Agent was updated
  final String updatedAt;
  /// URL for the Agent
  final String? url;
  /// User ID linked with the Agent
  final String? userId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgent].
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
  GetGenaiAgentsByOpenaiApiKeyAgent({
    this.agentGuardrails,
    required this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    required this.childAgents,
    required this.createdAt,
    this.deployments,
    this.description,
    this.functions,
    this.ifCase,
    required this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    required this.modelUuid,
    required this.models,
    required this.name,
    this.openAiApiKeys,
    required this.parentAgents,
    required this.projectId,
    required this.region,
    this.retrievalMethod,
    required this.routeCreatedAt,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    required this.updatedAt,
    this.url,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?agentGuardrails == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail, Map<String, dynamic>>(agentGuardrails!, (value) => value.toMap()),
      'agentId': agentId,
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'childAgents': pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent, Map<String, dynamic>>(childAgents, (value) => value.toMap()),
      'createdAt': createdAt,
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
      'description': ?description,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentFunction, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBases': ?knowledgeBases == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase, Map<String, dynamic>>(knowledgeBases!, (value) => value.toMap()),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'openAiApiKeys': ?openAiApiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey, Map<String, dynamic>>(openAiApiKeys!, (value) => value.toMap()),
      'parentAgents': pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent, Map<String, dynamic>>(parentAgents, (value) => value.toMap()),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?templates == null ? null : pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplate, Map<String, dynamic>>(templates!, (value) => value.toMap()),
      'topP': ?topP,
      'updatedAt': updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgent(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>(map['apiKeys'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>(map['chatbots'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      childAgents: pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent>(map['childAgents'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>(map['deployments'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentFunction>(map['functions'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentFunction.fromMap((value as Map).cast<String, dynamic>())),
      ifCase: map['ifCase'] == null ? null : map['ifCase'] as String,
      instruction: map['instruction'] as String,
      k: map['k'] == null ? null : map['k'] as int,
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      modelUuid: map['modelUuid'] as String,
      models: pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentModel>(map['models'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      parentAgents: pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent>(map['parentAgents'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      retrievalMethod: map['retrievalMethod'] == null ? null : map['retrievalMethod'] as String,
      routeCreatedAt: map['routeCreatedAt'] as String,
      routeCreatedBy: map['routeCreatedBy'] == null ? null : map['routeCreatedBy'] as String,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
      routeUuid: map['routeUuid'] == null ? null : map['routeUuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
      templates: map['templates'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>(map['templates'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      topP: map['topP'] == null ? null : map['topP'] as double,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}


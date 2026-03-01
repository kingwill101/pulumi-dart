// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_parent_agent_anthropic_api_key.dart';
import 'get_genai_agent_parent_agent_api_key.dart';
import 'get_genai_agent_parent_agent_api_key_info.dart';
import 'get_genai_agent_parent_agent_chatbot.dart';
import 'get_genai_agent_parent_agent_chatbot_identifier.dart';
import 'get_genai_agent_parent_agent_deployment.dart';

class GetGenaiAgentParentAgent {
  /// ID of the child agent
  final String agentId;
  /// Anthropic API Key information
  final List<GetGenaiAgentParentAgentAnthropicApiKey>? anthropicApiKeys;
  /// List of API Key Infos
  final List<GetGenaiAgentParentAgentApiKeyInfo>? apiKeyInfos;
  /// List of API Keys
  final List<GetGenaiAgentParentAgentApiKey>? apiKeys;
  /// List of Chatbot Identifiers
  final List<GetGenaiAgentParentAgentChatbotIdentifier>? chatbotIdentifiers;
  /// ChatBot configuration
  final List<GetGenaiAgentParentAgentChatbot>? chatbots;
  /// List of API Key Infos
  final List<GetGenaiAgentParentAgentDeployment>? deployments;
  /// Description for the Agent
  final String? description;
  /// Instruction for the Agent
  final String instruction;
  /// Model UUID of the Agent
  final String modelUuid;
  /// Name of the Agent
  final String name;
  /// Project ID of the Agent
  final String projectId;
  /// Region where the Agent is deployed
  final String region;

  /// Creates a new [GetGenaiAgentParentAgent].
  /// [agentId] ID of the child agent
  /// [anthropicApiKeys] Anthropic API Key information
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [instruction] Instruction for the Agent
  /// [modelUuid] Model UUID of the Agent
  /// [name] Name of the Agent
  /// [projectId] Project ID of the Agent
  /// [region] Region where the Agent is deployed
  GetGenaiAgentParentAgent({
    required this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.deployments,
    this.description,
    required this.instruction,
    required this.modelUuid,
    required this.name,
    required this.projectId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GetGenaiAgentParentAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
      'description': ?description,
      'instruction': instruction,
      'modelUuid': modelUuid,
      'name': name,
      'projectId': projectId,
      'region': region,
    };
  }

  factory GetGenaiAgentParentAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentParentAgent(
      agentId: map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGenaiAgentParentAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGenaiAgentParentAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentApiKey>(map['apiKeys'], (value) => GetGenaiAgentParentAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGenaiAgentParentAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentChatbot>(map['chatbots'], (value) => GetGenaiAgentParentAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentParentAgentDeployment>(map['deployments'], (value) => GetGenaiAgentParentAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      instruction: map['instruction'] as String,
      modelUuid: map['modelUuid'] as String,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
    );
  }
}


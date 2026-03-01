// ignore_for_file: unused_element, unnecessary_cast

import 'chat_engine_chat_engine_config_agent_creation_config.dart';

class ChatEngineChatEngineConfig {
  /// The configuration to generate the Dialogflow agent that is associated to this Engine.
  /// Exactly one of `agent_creation_config` or `dialogflow_agent_to_link` must be set.
  /// Structure is documented below.
  final ChatEngineChatEngineConfigAgentCreationConfig? agentCreationConfig;

  /// If the flag set to true, we allow the agent and engine are in
  /// different locations, otherwise the agent and engine are required to be
  /// in the same location. The flag is set to false by default.
  /// Note that the `allow_cross_region` are one-time consumed by and passed
  /// to EngineService.CreateEngine. It means they cannot be retrieved using
  /// EngineService.GetEngine or EngineService.ListEngines API after engine
  /// creation.
  final bool? allowCrossRegion;

  /// The resource name of an existing Dialogflow agent to link to this Chat Engine. Format: `projects/<Project_ID>/locations/<Location_ID>/agents/<Agent_ID>`.
  /// Exactly one of `agent_creation_config` or `dialogflow_agent_to_link` must be set.
  final String? dialogflowAgentToLink;

  /// Creates a new [ChatEngineChatEngineConfig].
  /// [agentCreationConfig] The configuration to generate the Dialogflow agent that is associated to this Engine.
  /// [allowCrossRegion] If the flag set to true, we allow the agent and engine are in
  /// [dialogflowAgentToLink] The resource name of an existing Dialogflow agent to link to this Chat Engine. Format: `projects/<Project_ID>/locations/<Location_ID>/agents/<Agent_ID>`.
  ChatEngineChatEngineConfig({
    this.agentCreationConfig,
    this.allowCrossRegion,
    this.dialogflowAgentToLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentCreationConfig': ?agentCreationConfig == null
          ? null
          : agentCreationConfig!.toMap(),
      'allowCrossRegion': ?allowCrossRegion,
      'dialogflowAgentToLink': ?dialogflowAgentToLink,
    };
  }

  factory ChatEngineChatEngineConfig.fromMap(Map<String, dynamic> map) {
    return ChatEngineChatEngineConfig(
      agentCreationConfig: map['agentCreationConfig'] == null
          ? null
          : ChatEngineChatEngineConfigAgentCreationConfig.fromMap(
              (map['agentCreationConfig'] as Map).cast<String, dynamic>(),
            ),
      allowCrossRegion: map['allowCrossRegion'] == null
          ? null
          : map['allowCrossRegion'] as bool,
      dialogflowAgentToLink: map['dialogflowAgentToLink'] == null
          ? null
          : map['dialogflowAgentToLink'] as String,
    );
  }
}

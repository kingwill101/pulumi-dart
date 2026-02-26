// ignore_for_file: unused_element, unnecessary_cast

import '../chat_engine_chat_engine_config_agent_creation_config/chat_engine_chat_engine_config_agent_creation_config.dart';

class ChatEngineChatEngineConfig {
  /// The configuration to generate the Dialogflow agent that is associated to this Engine.
  /// Exactly one of <span pulumi-lang-nodejs="`agentCreationConfig`" pulumi-lang-dotnet="`AgentCreationConfig`" pulumi-lang-go="`agentCreationConfig`" pulumi-lang-python="`agent_creation_config`" pulumi-lang-yaml="`agentCreationConfig`" pulumi-lang-java="`agentCreationConfig`">`agent_creation_config`</span> or <span pulumi-lang-nodejs="`dialogflowAgentToLink`" pulumi-lang-dotnet="`DialogflowAgentToLink`" pulumi-lang-go="`dialogflowAgentToLink`" pulumi-lang-python="`dialogflow_agent_to_link`" pulumi-lang-yaml="`dialogflowAgentToLink`" pulumi-lang-java="`dialogflowAgentToLink`">`dialogflow_agent_to_link`</span> must be set.
  /// Structure is documented below.
  final ChatEngineChatEngineConfigAgentCreationConfig? agentCreationConfig;

  /// If the flag set to true, we allow the agent and engine are in
  /// different locations, otherwise the agent and engine are required to be
  /// in the same location. The flag is set to false by default.
  /// Note that the <span pulumi-lang-nodejs="`allowCrossRegion`" pulumi-lang-dotnet="`AllowCrossRegion`" pulumi-lang-go="`allowCrossRegion`" pulumi-lang-python="`allow_cross_region`" pulumi-lang-yaml="`allowCrossRegion`" pulumi-lang-java="`allowCrossRegion`">`allow_cross_region`</span> are one-time consumed by and passed
  /// to EngineService.CreateEngine. It means they cannot be retrieved using
  /// EngineService.GetEngine or EngineService.ListEngines API after engine
  /// creation.
  final bool? allowCrossRegion;

  /// The resource name of an existing Dialogflow agent to link to this Chat Engine. Format: `projects/<Project_ID>/locations/<Location_ID>/agents/<Agent_ID>`.
  /// Exactly one of <span pulumi-lang-nodejs="`agentCreationConfig`" pulumi-lang-dotnet="`AgentCreationConfig`" pulumi-lang-go="`agentCreationConfig`" pulumi-lang-python="`agent_creation_config`" pulumi-lang-yaml="`agentCreationConfig`" pulumi-lang-java="`agentCreationConfig`">`agent_creation_config`</span> or <span pulumi-lang-nodejs="`dialogflowAgentToLink`" pulumi-lang-dotnet="`DialogflowAgentToLink`" pulumi-lang-go="`dialogflowAgentToLink`" pulumi-lang-python="`dialogflow_agent_to_link`" pulumi-lang-yaml="`dialogflowAgentToLink`" pulumi-lang-java="`dialogflowAgentToLink`">`dialogflow_agent_to_link`</span> must be set.
  final String? dialogflowAgentToLink;

  ChatEngineChatEngineConfig({
    this.agentCreationConfig,
    this.allowCrossRegion,
    this.dialogflowAgentToLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentCreationConfigValue = agentCreationConfig;
    if (agentCreationConfigValue != null) {
      map['agentCreationConfig'] = agentCreationConfigValue.toMap();
    }
    final allowCrossRegionValue = allowCrossRegion;
    if (allowCrossRegionValue != null) {
      map['allowCrossRegion'] = allowCrossRegionValue;
    }
    final dialogflowAgentToLinkValue = dialogflowAgentToLink;
    if (dialogflowAgentToLinkValue != null) {
      map['dialogflowAgentToLink'] = dialogflowAgentToLinkValue;
    }
    return map;
  }

  factory ChatEngineChatEngineConfig.fromMap(Map<String, dynamic> map) {
    return ChatEngineChatEngineConfig(
      agentCreationConfig: map['agentCreationConfig'] == null
          ? null
          : ChatEngineChatEngineConfigAgentCreationConfig.fromMap(
              (map['agentCreationConfig'] as Map).cast<String, dynamic>()),
      allowCrossRegion: map['allowCrossRegion'] == null
          ? null
          : map['allowCrossRegion'] as bool,
      dialogflowAgentToLink: map['dialogflowAgentToLink'] == null
          ? null
          : map['dialogflowAgentToLink'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_human_agent_handoff_config_live_person_config.dart';

class ConversationProfileHumanAgentHandoffConfig {
  /// Config for using LivePerson.
  /// Structure is documented below.
  final ConversationProfileHumanAgentHandoffConfigLivePersonConfig?
  livePersonConfig;

  /// Creates a new [ConversationProfileHumanAgentHandoffConfig].
  /// [livePersonConfig] Config for using LivePerson.
  ConversationProfileHumanAgentHandoffConfig({this.livePersonConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livePersonConfig': ?livePersonConfig == null
          ? null
          : livePersonConfig!.toMap(),
    };
  }

  factory ConversationProfileHumanAgentHandoffConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentHandoffConfig(
      livePersonConfig: map['livePersonConfig'] == null
          ? null
          : ConversationProfileHumanAgentHandoffConfigLivePersonConfig.fromMap(
              (map['livePersonConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

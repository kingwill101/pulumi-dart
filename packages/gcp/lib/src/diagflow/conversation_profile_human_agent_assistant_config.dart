// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config.dart';
import 'conversation_profile_human_agent_assistant_config_message_analysis_config.dart';
import 'conversation_profile_human_agent_assistant_config_notification_config.dart';

class ConversationProfileHumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig?
      endUserSuggestionConfig;

  /// Configuration for agent assistance of human agent participant.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig?
      humanAgentSuggestionConfig;

  /// desc
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig?
      messageAnalysisConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigNotificationConfig?
      notificationConfig;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] desc
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  ConversationProfileHumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endUserSuggestionConfigValue = endUserSuggestionConfig;
    if (endUserSuggestionConfigValue != null) {
      map['endUserSuggestionConfig'] = endUserSuggestionConfigValue.toMap();
    }
    final humanAgentSuggestionConfigValue = humanAgentSuggestionConfig;
    if (humanAgentSuggestionConfigValue != null) {
      map['humanAgentSuggestionConfig'] =
          humanAgentSuggestionConfigValue.toMap();
    }
    final messageAnalysisConfigValue = messageAnalysisConfig;
    if (messageAnalysisConfigValue != null) {
      map['messageAnalysisConfig'] = messageAnalysisConfigValue.toMap();
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = notificationConfigValue.toMap();
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfig(
      endUserSuggestionConfig: map['endUserSuggestionConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig
              .fromMap((map['endUserSuggestionConfig'] as Map)
                  .cast<String, dynamic>()),
      humanAgentSuggestionConfig: map['humanAgentSuggestionConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfig
              .fromMap((map['humanAgentSuggestionConfig'] as Map)
                  .cast<String, dynamic>()),
      messageAnalysisConfig: map['messageAnalysisConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig
              .fromMap((map['messageAnalysisConfig'] as Map)
                  .cast<String, dynamic>()),
      notificationConfig: map['notificationConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigNotificationConfig
              .fromMap(
                  (map['notificationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

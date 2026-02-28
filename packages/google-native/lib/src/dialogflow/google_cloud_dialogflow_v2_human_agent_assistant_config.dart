// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_assistant_config_message_analysis_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_config.dart';
import 'google_cloud_dialogflow_v2_notification_config.dart';

/// Defines the Human Agent Assist to connect to a conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig? endUserSuggestionConfig;
  /// Configuration for agent assistance of human agent participant.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig? humanAgentSuggestionConfig;
  /// Configuration for message analysis.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig? messageAnalysisConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  final GoogleCloudDialogflowV2NotificationConfig? notificationConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] Configuration for message analysis.
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  GoogleCloudDialogflowV2HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserSuggestionConfig': ?endUserSuggestionConfig == null ? null : endUserSuggestionConfig!.toMap(),
      'humanAgentSuggestionConfig': ?humanAgentSuggestionConfig == null ? null : humanAgentSuggestionConfig!.toMap(),
      'messageAnalysisConfig': ?messageAnalysisConfig == null ? null : messageAnalysisConfig!.toMap(),
      'notificationConfig': ?notificationConfig == null ? null : notificationConfig!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfig(
      endUserSuggestionConfig: map['endUserSuggestionConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromMap((map['endUserSuggestionConfig'] as Map).cast<String, dynamic>()),
      humanAgentSuggestionConfig: map['humanAgentSuggestionConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromMap((map['humanAgentSuggestionConfig'] as Map).cast<String, dynamic>()),
      messageAnalysisConfig: map['messageAnalysisConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig.fromMap((map['messageAnalysisConfig'] as Map).cast<String, dynamic>()),
      notificationConfig: map['notificationConfig'] == null ? null : GoogleCloudDialogflowV2NotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}


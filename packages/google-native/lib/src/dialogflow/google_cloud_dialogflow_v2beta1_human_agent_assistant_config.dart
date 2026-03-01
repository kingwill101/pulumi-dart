// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_message_analysis_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_config.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config.dart';

/// Defines the Human Agent Assistant to connect to a conversation.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig {
  /// Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig?
  endUserSuggestionConfig;

  /// Configuration for agent assistance of human agent participant.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig?
  humanAgentSuggestionConfig;

  /// Configuration for message analysis.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig?
  messageAnalysisConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  final GoogleCloudDialogflowV2beta1NotificationConfig? notificationConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig].
  /// [endUserSuggestionConfig] Configuration for agent assistance of end user participant. Currently, this feature is not general available, please contact Google to get access.
  /// [humanAgentSuggestionConfig] Configuration for agent assistance of human agent participant.
  /// [messageAnalysisConfig] Configuration for message analysis.
  /// [notificationConfig] Pub/Sub topic on which to publish new agent assistant events.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig({
    this.endUserSuggestionConfig,
    this.humanAgentSuggestionConfig,
    this.messageAnalysisConfig,
    this.notificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endUserSuggestionConfig': ?endUserSuggestionConfig == null
          ? null
          : endUserSuggestionConfig!.toMap(),
      'humanAgentSuggestionConfig': ?humanAgentSuggestionConfig == null
          ? null
          : humanAgentSuggestionConfig!.toMap(),
      'messageAnalysisConfig': ?messageAnalysisConfig == null
          ? null
          : messageAnalysisConfig!.toMap(),
      'notificationConfig': ?notificationConfig == null
          ? null
          : notificationConfig!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig(
      endUserSuggestionConfig: map['endUserSuggestionConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromMap(
              (map['endUserSuggestionConfig'] as Map).cast<String, dynamic>(),
            ),
      humanAgentSuggestionConfig: map['humanAgentSuggestionConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionConfig.fromMap(
              (map['humanAgentSuggestionConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      messageAnalysisConfig: map['messageAnalysisConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigMessageAnalysisConfig.fromMap(
              (map['messageAnalysisConfig'] as Map).cast<String, dynamic>(),
            ),
      notificationConfig: map['notificationConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
              (map['notificationConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

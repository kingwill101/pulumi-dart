// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../conversation_profile_automated_agent_config/conversation_profile_automated_agent_config.dart';
import '../conversation_profile_human_agent_assistant_config/conversation_profile_human_agent_assistant_config.dart';
import '../conversation_profile_human_agent_handoff_config/conversation_profile_human_agent_handoff_config.dart';
import '../conversation_profile_logging_config/conversation_profile_logging_config.dart';
import '../conversation_profile_new_message_event_notification_config/conversation_profile_new_message_event_notification_config.dart';
import '../conversation_profile_new_recognition_result_notification_config/conversation_profile_new_recognition_result_notification_config.dart';
import '../conversation_profile_notification_config/conversation_profile_notification_config.dart';
import '../conversation_profile_stt_config/conversation_profile_stt_config.dart';
import '../conversation_profile_tts_config/conversation_profile_tts_config.dart';

/// The set of arguments for ConversationProfile.
class ConversationProfileArgs {
  /// Configuration for an automated agent to use with this profile
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileAutomatedAgentConfig>?
      automatedAgentConfig;

  /// Required. Human readable name for this profile. Max length 1024 bytes.
  final pulumi.Input<String> displayName;

  /// Configuration for connecting to a live agent
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfig>?
      humanAgentAssistantConfig;

  /// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentHandoffConfig>?
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. This should be a BCP-47 language tag.
  final pulumi.Input<String>? languageCode;

  /// desc
  final pulumi.Input<String> location;

  /// Defines logging behavior for conversation lifecycle events.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileLoggingConfig>? loggingConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNewMessageEventNotificationConfig>?
      newMessageEventNotificationConfig;

  /// Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - "participant_id" - "participantRole" - "message_id"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNewRecognitionResultNotificationConfig>?
      newRecognitionResultNotificationConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileNotificationConfig>? notificationConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent.
  final pulumi.Input<String>? securitySettings;

  /// Settings for speech transcription.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileSttConfig>? sttConfig;

  /// The time zone of this conversational profile.
  final pulumi.Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileTtsConfig>? ttsConfig;

  ConversationProfileArgs({
    this.automatedAgentConfig,
    required this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    required this.location,
    this.loggingConfig,
    this.newMessageEventNotificationConfig,
    this.newRecognitionResultNotificationConfig,
    this.notificationConfig,
    this.project,
    this.securitySettings,
    this.sttConfig,
    this.timeZone,
    this.ttsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final automatedAgentConfigValue = automatedAgentConfig;
    if (automatedAgentConfigValue != null) {
      map['automatedAgentConfig'] = pulumi.Input.mapOptionalInputValue<
              ConversationProfileAutomatedAgentConfig, Map<String, dynamic>>(
          automatedAgentConfigValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final humanAgentAssistantConfigValue = humanAgentAssistantConfig;
    if (humanAgentAssistantConfigValue != null) {
      map['humanAgentAssistantConfig'] = pulumi.Input.mapOptionalInputValue<
              ConversationProfileHumanAgentAssistantConfig,
              Map<String, dynamic>>(
          humanAgentAssistantConfigValue, (value) => value.toMap());
    }
    final humanAgentHandoffConfigValue = humanAgentHandoffConfig;
    if (humanAgentHandoffConfigValue != null) {
      map['humanAgentHandoffConfig'] = pulumi.Input.mapOptionalInputValue<
              ConversationProfileHumanAgentHandoffConfig, Map<String, dynamic>>(
          humanAgentHandoffConfigValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          ConversationProfileLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final newMessageEventNotificationConfigValue =
        newMessageEventNotificationConfig;
    if (newMessageEventNotificationConfigValue != null) {
      map['newMessageEventNotificationConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  ConversationProfileNewMessageEventNotificationConfig,
                  Map<String, dynamic>>(
              newMessageEventNotificationConfigValue, (value) => value.toMap());
    }
    final newRecognitionResultNotificationConfigValue =
        newRecognitionResultNotificationConfig;
    if (newRecognitionResultNotificationConfigValue != null) {
      map['newRecognitionResultNotificationConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  ConversationProfileNewRecognitionResultNotificationConfig,
                  Map<String, dynamic>>(
              newRecognitionResultNotificationConfigValue,
              (value) => value.toMap());
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              ConversationProfileNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] = securitySettingsValue;
    }
    final sttConfigValue = sttConfig;
    if (sttConfigValue != null) {
      map['sttConfig'] = pulumi.Input.mapOptionalInputValue<
          ConversationProfileSttConfig,
          Map<String, dynamic>>(sttConfigValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final ttsConfigValue = ttsConfig;
    if (ttsConfigValue != null) {
      map['ttsConfig'] = pulumi.Input.mapOptionalInputValue<
          ConversationProfileTtsConfig,
          Map<String, dynamic>>(ttsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConversationProfileArgs(
      automatedAgentConfig:
          pulumi.Input.asOptionalInput<ConversationProfileAutomatedAgentConfig>(
              map['automatedAgentConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      humanAgentAssistantConfig: pulumi.Input.asOptionalInput<
              ConversationProfileHumanAgentAssistantConfig>(
          map['humanAgentAssistantConfig']),
      humanAgentHandoffConfig: pulumi.Input.asOptionalInput<
              ConversationProfileHumanAgentHandoffConfig>(
          map['humanAgentHandoffConfig']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      loggingConfig:
          pulumi.Input.asOptionalInput<ConversationProfileLoggingConfig>(
              map['loggingConfig']),
      newMessageEventNotificationConfig: pulumi.Input.asOptionalInput<
              ConversationProfileNewMessageEventNotificationConfig>(
          map['newMessageEventNotificationConfig']),
      newRecognitionResultNotificationConfig: pulumi.Input.asOptionalInput<
              ConversationProfileNewRecognitionResultNotificationConfig>(
          map['newRecognitionResultNotificationConfig']),
      notificationConfig:
          pulumi.Input.asOptionalInput<ConversationProfileNotificationConfig>(
              map['notificationConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securitySettings:
          pulumi.Input.asOptionalInput<String>(map['securitySettings']),
      sttConfig: pulumi.Input.asOptionalInput<ConversationProfileSttConfig>(
          map['sttConfig']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      ttsConfig: pulumi.Input.asOptionalInput<ConversationProfileTtsConfig>(
          map['ttsConfig']),
    );
  }
}

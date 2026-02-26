// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<ConversationProfileAutomatedAgentConfig>? automatedAgentConfig;

  /// Required. Human readable name for this profile. Max length 1024 bytes.
  final Input<String> displayName;

  /// Configuration for connecting to a live agent
  /// Structure is documented below.
  final Input<ConversationProfileHumanAgentAssistantConfig>?
      humanAgentAssistantConfig;

  /// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// Structure is documented below.
  final Input<ConversationProfileHumanAgentHandoffConfig>?
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. This should be a BCP-47 language tag.
  final Input<String>? languageCode;

  /// desc
  final Input<String> location;

  /// Defines logging behavior for conversation lifecycle events.
  /// Structure is documented below.
  final Input<ConversationProfileLoggingConfig>? loggingConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final Input<ConversationProfileNewMessageEventNotificationConfig>?
      newMessageEventNotificationConfig;

  /// Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - <span pulumi-lang-nodejs=""participantId"" pulumi-lang-dotnet=""ParticipantId"" pulumi-lang-go=""participantId"" pulumi-lang-python=""participant_id"" pulumi-lang-yaml=""participantId"" pulumi-lang-java=""participantId"">"participant_id"</span> - "participantRole" - <span pulumi-lang-nodejs=""messageId"" pulumi-lang-dotnet=""MessageId"" pulumi-lang-go=""messageId"" pulumi-lang-python=""message_id"" pulumi-lang-yaml=""messageId"" pulumi-lang-java=""messageId"">"message_id"</span>
  /// Structure is documented below.
  final Input<ConversationProfileNewRecognitionResultNotificationConfig>?
      newRecognitionResultNotificationConfig;

  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>"
  /// Structure is documented below.
  final Input<ConversationProfileNotificationConfig>? notificationConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent.
  final Input<String>? securitySettings;

  /// Settings for speech transcription.
  /// Structure is documented below.
  final Input<ConversationProfileSttConfig>? sttConfig;

  /// The time zone of this conversational profile.
  final Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  /// Structure is documented below.
  final Input<ConversationProfileTtsConfig>? ttsConfig;

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
      map['automatedAgentConfig'] = Input.mapOptionalInputValue<
              ConversationProfileAutomatedAgentConfig, Map<String, dynamic>>(
          automatedAgentConfigValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final humanAgentAssistantConfigValue = humanAgentAssistantConfig;
    if (humanAgentAssistantConfigValue != null) {
      map['humanAgentAssistantConfig'] = Input.mapOptionalInputValue<
              ConversationProfileHumanAgentAssistantConfig,
              Map<String, dynamic>>(
          humanAgentAssistantConfigValue, (value) => value.toMap());
    }
    final humanAgentHandoffConfigValue = humanAgentHandoffConfig;
    if (humanAgentHandoffConfigValue != null) {
      map['humanAgentHandoffConfig'] = Input.mapOptionalInputValue<
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
      map['loggingConfig'] = Input.mapOptionalInputValue<
          ConversationProfileLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final newMessageEventNotificationConfigValue =
        newMessageEventNotificationConfig;
    if (newMessageEventNotificationConfigValue != null) {
      map['newMessageEventNotificationConfig'] = Input.mapOptionalInputValue<
              ConversationProfileNewMessageEventNotificationConfig,
              Map<String, dynamic>>(
          newMessageEventNotificationConfigValue, (value) => value.toMap());
    }
    final newRecognitionResultNotificationConfigValue =
        newRecognitionResultNotificationConfig;
    if (newRecognitionResultNotificationConfigValue != null) {
      map['newRecognitionResultNotificationConfig'] =
          Input.mapOptionalInputValue<
                  ConversationProfileNewRecognitionResultNotificationConfig,
                  Map<String, dynamic>>(
              newRecognitionResultNotificationConfigValue,
              (value) => value.toMap());
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
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
      map['sttConfig'] = Input.mapOptionalInputValue<
          ConversationProfileSttConfig,
          Map<String, dynamic>>(sttConfigValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final ttsConfigValue = ttsConfig;
    if (ttsConfigValue != null) {
      map['ttsConfig'] = Input.mapOptionalInputValue<
          ConversationProfileTtsConfig,
          Map<String, dynamic>>(ttsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConversationProfileArgs(
      automatedAgentConfig:
          Input.asOptionalInput<ConversationProfileAutomatedAgentConfig>(
              map['automatedAgentConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      humanAgentAssistantConfig:
          Input.asOptionalInput<ConversationProfileHumanAgentAssistantConfig>(
              map['humanAgentAssistantConfig']),
      humanAgentHandoffConfig:
          Input.asOptionalInput<ConversationProfileHumanAgentHandoffConfig>(
              map['humanAgentHandoffConfig']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      loggingConfig: Input.asOptionalInput<ConversationProfileLoggingConfig>(
          map['loggingConfig']),
      newMessageEventNotificationConfig: Input.asOptionalInput<
              ConversationProfileNewMessageEventNotificationConfig>(
          map['newMessageEventNotificationConfig']),
      newRecognitionResultNotificationConfig: Input.asOptionalInput<
              ConversationProfileNewRecognitionResultNotificationConfig>(
          map['newRecognitionResultNotificationConfig']),
      notificationConfig:
          Input.asOptionalInput<ConversationProfileNotificationConfig>(
              map['notificationConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      securitySettings: Input.asOptionalInput<String>(map['securitySettings']),
      sttConfig:
          Input.asOptionalInput<ConversationProfileSttConfig>(map['sttConfig']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
      ttsConfig:
          Input.asOptionalInput<ConversationProfileTtsConfig>(map['ttsConfig']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_automated_agent_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_handoff_config.dart';
import 'google_cloud_dialogflow_v2_logging_config.dart';
import 'google_cloud_dialogflow_v2_notification_config.dart';
import 'google_cloud_dialogflow_v2_speech_to_text_config.dart';
import 'google_cloud_dialogflow_v2_synthesize_speech_config.dart';

/// The set of arguments for ConversationProfile.
class ConversationProfileArgs {
  /// Configuration for an automated agent to use with this profile.
  final Input<GoogleCloudDialogflowV2AutomatedAgentConfig>?
      automatedAgentConfig;

  /// Human readable name for this profile. Max length 1024 bytes.
  final Input<String> displayName;

  /// Configuration for agent assistance to use with this profile.
  final Input<GoogleCloudDialogflowV2HumanAgentAssistantConfig>?
      humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  final Input<GoogleCloudDialogflowV2HumanAgentHandoffConfig>?
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-US languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final Input<String>? languageCode;
  final Input<String>? location;

  /// Configuration for logging conversation lifecycle events.
  final Input<GoogleCloudDialogflowV2LoggingConfig>? loggingConfig;

  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  final Input<String>? name;

  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  final Input<GoogleCloudDialogflowV2NotificationConfig>?
      newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  final Input<GoogleCloudDialogflowV2NotificationConfig>? notificationConfig;
  final Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final Input<String>? securitySettings;

  /// Settings for speech transcription.
  final Input<GoogleCloudDialogflowV2SpeechToTextConfig>? sttConfig;

  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  final Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  final Input<GoogleCloudDialogflowV2SynthesizeSpeechConfig>? ttsConfig;

  ConversationProfileArgs({
    this.automatedAgentConfig,
    required this.displayName,
    this.humanAgentAssistantConfig,
    this.humanAgentHandoffConfig,
    this.languageCode,
    this.location,
    this.loggingConfig,
    this.name,
    this.newMessageEventNotificationConfig,
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
              GoogleCloudDialogflowV2AutomatedAgentConfig,
              Map<String, dynamic>>(
          automatedAgentConfigValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final humanAgentAssistantConfigValue = humanAgentAssistantConfig;
    if (humanAgentAssistantConfigValue != null) {
      map['humanAgentAssistantConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2HumanAgentAssistantConfig,
              Map<String, dynamic>>(
          humanAgentAssistantConfigValue, (value) => value.toMap());
    }
    final humanAgentHandoffConfigValue = humanAgentHandoffConfig;
    if (humanAgentHandoffConfigValue != null) {
      map['humanAgentHandoffConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2HumanAgentHandoffConfig,
              Map<String, dynamic>>(
          humanAgentHandoffConfigValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2LoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final newMessageEventNotificationConfigValue =
        newMessageEventNotificationConfig;
    if (newMessageEventNotificationConfigValue != null) {
      map['newMessageEventNotificationConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2NotificationConfig, Map<String, dynamic>>(
          newMessageEventNotificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2NotificationConfig, Map<String, dynamic>>(
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
          GoogleCloudDialogflowV2SpeechToTextConfig,
          Map<String, dynamic>>(sttConfigValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final ttsConfigValue = ttsConfig;
    if (ttsConfigValue != null) {
      map['ttsConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2SynthesizeSpeechConfig,
          Map<String, dynamic>>(ttsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConversationProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConversationProfileArgs(
      automatedAgentConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2AutomatedAgentConfig>(
              map['automatedAgentConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      humanAgentAssistantConfig: Input.asOptionalInput<
              GoogleCloudDialogflowV2HumanAgentAssistantConfig>(
          map['humanAgentAssistantConfig']),
      humanAgentHandoffConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2HumanAgentHandoffConfig>(
              map['humanAgentHandoffConfig']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      loggingConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2LoggingConfig>(
              map['loggingConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      newMessageEventNotificationConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2NotificationConfig>(
              map['newMessageEventNotificationConfig']),
      notificationConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2NotificationConfig>(
              map['notificationConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      securitySettings: Input.asOptionalInput<String>(map['securitySettings']),
      sttConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2SpeechToTextConfig>(
              map['sttConfig']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
      ttsConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2SynthesizeSpeechConfig>(
              map['ttsConfig']),
    );
  }
}

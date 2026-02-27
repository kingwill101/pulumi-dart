// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_automated_agent_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config.dart';
import 'google_cloud_dialogflow_v2beta1_logging_config.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config.dart';
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config.dart';
import 'google_cloud_dialogflow_v2beta1_synthesize_speech_config.dart';

/// The set of arguments for ConversationProfile.
class ConversationProfileDialogflowV2beta1Args {
  /// Configuration for an automated agent to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2beta1AutomatedAgentConfig>?
      automatedAgentConfig;

  /// Human readable name for this profile. Max length 1024 bytes.
  final pulumi.Input<String> displayName;

  /// Configuration for agent assistance to use with this profile.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig>?
      humanAgentAssistantConfig;

  /// Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig>?
      humanAgentHandoffConfig;

  /// Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// Configuration for logging conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2beta1LoggingConfig>? loggingConfig;

  /// The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  final pulumi.Input<String>? name;

  /// Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  final pulumi.Input<GoogleCloudDialogflowV2beta1NotificationConfig>?
      newMessageEventNotificationConfig;

  /// Configuration for publishing conversation lifecycle events.
  final pulumi.Input<GoogleCloudDialogflowV2beta1NotificationConfig>?
      notificationConfig;
  final pulumi.Input<String>? project;

  /// Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? securitySettings;

  /// Settings for speech transcription.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SpeechToTextConfig>? sttConfig;

  /// The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  final pulumi.Input<String>? timeZone;

  /// Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig>?
      ttsConfig;

  ConversationProfileDialogflowV2beta1Args({
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
      map['automatedAgentConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2beta1AutomatedAgentConfig,
              Map<String, dynamic>>(
          automatedAgentConfigValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final humanAgentAssistantConfigValue = humanAgentAssistantConfig;
    if (humanAgentAssistantConfigValue != null) {
      map['humanAgentAssistantConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig,
              Map<String, dynamic>>(
          humanAgentAssistantConfigValue, (value) => value.toMap());
    }
    final humanAgentHandoffConfigValue = humanAgentHandoffConfig;
    if (humanAgentHandoffConfigValue != null) {
      map['humanAgentHandoffConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig,
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
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2beta1LoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final newMessageEventNotificationConfigValue =
        newMessageEventNotificationConfig;
    if (newMessageEventNotificationConfigValue != null) {
      map['newMessageEventNotificationConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  GoogleCloudDialogflowV2beta1NotificationConfig,
                  Map<String, dynamic>>(
              newMessageEventNotificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2beta1NotificationConfig,
              Map<String, dynamic>>(
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
          GoogleCloudDialogflowV2beta1SpeechToTextConfig,
          Map<String, dynamic>>(sttConfigValue, (value) => value.toMap());
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final ttsConfigValue = ttsConfig;
    if (ttsConfigValue != null) {
      map['ttsConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig,
          Map<String, dynamic>>(ttsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConversationProfileDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileDialogflowV2beta1Args(
      automatedAgentConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1AutomatedAgentConfig>(
          map['automatedAgentConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      humanAgentAssistantConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig>(
          map['humanAgentAssistantConfig']),
      humanAgentHandoffConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig>(
          map['humanAgentHandoffConfig']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      loggingConfig: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowV2beta1LoggingConfig>(map['loggingConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      newMessageEventNotificationConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1NotificationConfig>(
          map['newMessageEventNotificationConfig']),
      notificationConfig: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowV2beta1NotificationConfig>(
          map['notificationConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securitySettings:
          pulumi.Input.asOptionalInput<String>(map['securitySettings']),
      sttConfig: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowV2beta1SpeechToTextConfig>(map['sttConfig']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      ttsConfig: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig>(map['ttsConfig']),
    );
  }
}

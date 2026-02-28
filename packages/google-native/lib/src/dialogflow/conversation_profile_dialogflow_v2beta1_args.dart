// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_automated_agent_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_handoff_config.dart';
import 'google_cloud_dialogflow_v2beta1_logging_config.dart';
import 'google_cloud_dialogflow_v2beta1_notification_config.dart';
import 'google_cloud_dialogflow_v2beta1_speech_to_text_config.dart';
import 'google_cloud_dialogflow_v2beta1_synthesize_speech_config.dart';

/// {@template pulumi_dialogflow_v2beta1_conversation_profile_dialogflow_v2beta1_args_doc}
/// The set of arguments for ConversationProfile.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2beta1_conversation_profile_dialogflow_v2beta1_args_doc}
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

  /// Creates a new [ConversationProfileDialogflowV2beta1Args].
  /// [automatedAgentConfig] Configuration for an automated agent to use with this profile.
  /// [displayName] Human readable name for this profile. Max length 1024 bytes.
  /// [humanAgentAssistantConfig] Configuration for agent assistance to use with this profile.
  /// [humanAgentHandoffConfig] Configuration for connecting to a live agent. Currently, this feature is not general available, please contact Google to get access.
  /// [languageCode] Language code for the conversation profile. If not specified, the language is en-US. Language at ConversationProfile should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [location] Optional.
  /// [loggingConfig] Configuration for logging conversation lifecycle events.
  /// [name] The unique identifier of this conversation profile. Format: `projects//locations//conversationProfiles/`.
  /// [newMessageEventNotificationConfig] Configuration for publishing new message events. Event will be sent in format of ConversationEvent
  /// [notificationConfig] Configuration for publishing conversation lifecycle events.
  /// [project] Optional.
  /// [securitySettings] Name of the CX SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  /// [sttConfig] Settings for speech transcription.
  /// [timeZone] The time zone of this conversational profile from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. Defaults to America/New_York.
  /// [ttsConfig] Configuration for Text-to-Speech synthesization. Used by Phone Gateway to specify synthesization options. If agent defines synthesization options as well, agent settings overrides the option here.
  ConversationProfileDialogflowV2beta1Args({
    GoogleCloudDialogflowV2beta1AutomatedAgentConfig? automatedAgentConfig,
    required String displayName,
    GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig?
        humanAgentAssistantConfig,
    GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig?
        humanAgentHandoffConfig,
    String? languageCode,
    String? location,
    GoogleCloudDialogflowV2beta1LoggingConfig? loggingConfig,
    String? name,
    GoogleCloudDialogflowV2beta1NotificationConfig?
        newMessageEventNotificationConfig,
    GoogleCloudDialogflowV2beta1NotificationConfig? notificationConfig,
    String? project,
    String? securitySettings,
    GoogleCloudDialogflowV2beta1SpeechToTextConfig? sttConfig,
    String? timeZone,
    GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig? ttsConfig,
  })  : automatedAgentConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowV2beta1AutomatedAgentConfig>(
            automatedAgentConfig),
        displayName = pulumi.Input.asInput<String>(displayName),
        humanAgentAssistantConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig>(
            humanAgentAssistantConfig),
        humanAgentHandoffConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig>(
            humanAgentHandoffConfig),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        loggingConfig = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowV2beta1LoggingConfig>(loggingConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        newMessageEventNotificationConfig = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowV2beta1NotificationConfig>(
            newMessageEventNotificationConfig),
        notificationConfig = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowV2beta1NotificationConfig>(notificationConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        securitySettings =
            pulumi.Input.asOptionalInput<String>(securitySettings),
        sttConfig = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowV2beta1SpeechToTextConfig>(sttConfig),
        timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
        ttsConfig = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig>(ttsConfig);

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
      automatedAgentConfig: map['automatedAgentConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1AutomatedAgentConfig.fromMap(
              (map['automatedAgentConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      humanAgentAssistantConfig: map['humanAgentAssistantConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig.fromMap(
              (map['humanAgentAssistantConfig'] as Map)
                  .cast<String, dynamic>()),
      humanAgentHandoffConfig: map['humanAgentHandoffConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentHandoffConfig.fromMap(
              (map['humanAgentHandoffConfig'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1LoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      newMessageEventNotificationConfig:
          map['newMessageEventNotificationConfig'] == null
              ? null
              : GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
                  (map['newMessageEventNotificationConfig'] as Map)
                      .cast<String, dynamic>()),
      notificationConfig: map['notificationConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1NotificationConfig.fromMap(
              (map['notificationConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      securitySettings: map['securitySettings'] == null
          ? null
          : map['securitySettings'] as String,
      sttConfig: map['sttConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1SpeechToTextConfig.fromMap(
              (map['sttConfig'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      ttsConfig: map['ttsConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig.fromMap(
              (map['ttsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

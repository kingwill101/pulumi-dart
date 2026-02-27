// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_agent_answer_feedback_settings.dart';
import 'google_cloud_dialogflow_cx_v3_agent_gen_app_builder_settings.dart';
import 'google_cloud_dialogflow_cx_v3_agent_git_integration_settings.dart';
import 'google_cloud_dialogflow_cx_v3_speech_to_text_settings.dart';
import 'google_cloud_dialogflow_cx_v3_text_to_speech_settings.dart';

/// The set of arguments for Agent.
class AgentArgs {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>?
      advancedSettings;

  /// Optional. Answer feedback collection settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings>?
      answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.
  final pulumi.Input<String>? avatarUri;

  /// Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.
  final pulumi.Input<String> defaultLanguageCode;

  /// The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the agent, unique within the location.
  final pulumi.Input<String> displayName;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;

  /// Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings>?
      genAppBuilderSettings;

  /// Git integration settings for this agent.
  final pulumi.Input<GoogleCloudDialogflowCxV3AgentGitIntegrationSettings>?
      gitIntegrationSettings;
  final pulumi.Input<String>? location;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.
  final pulumi.Input<bool>? locked;

  /// The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.
  final pulumi.Input<String>? securitySettings;

  /// Speech recognition related settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3SpeechToTextSettings>?
      speechToTextSettings;

  /// Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? startFlow;

  /// The list of all languages supported by the agent (except for the `default_language_code`).
  final pulumi.Input<List<String>>? supportedLanguageCodes;

  /// Settings on instructing the speech synthesizer on how to generate the output audio content.
  final pulumi.Input<GoogleCloudDialogflowCxV3TextToSpeechSettings>?
      textToSpeechSettings;

  /// The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
  final pulumi.Input<String> timeZone;

  AgentArgs({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    required this.defaultLanguageCode,
    this.description,
    required this.displayName,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    this.location,
    this.locked,
    this.name,
    this.project,
    this.securitySettings,
    this.speechToTextSettings,
    this.startFlow,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    final answerFeedbackSettingsValue = answerFeedbackSettings;
    if (answerFeedbackSettingsValue != null) {
      map['answerFeedbackSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings,
              Map<String, dynamic>>(
          answerFeedbackSettingsValue, (value) => value.toMap());
    }
    final avatarUriValue = avatarUri;
    if (avatarUriValue != null) {
      map['avatarUri'] = avatarUriValue;
    }
    map['defaultLanguageCode'] = defaultLanguageCode;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final enableSpellCorrectionValue = enableSpellCorrection;
    if (enableSpellCorrectionValue != null) {
      map['enableSpellCorrection'] = enableSpellCorrectionValue;
    }
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    final genAppBuilderSettingsValue = genAppBuilderSettings;
    if (genAppBuilderSettingsValue != null) {
      map['genAppBuilderSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings,
              Map<String, dynamic>>(
          genAppBuilderSettingsValue, (value) => value.toMap());
    }
    final gitIntegrationSettingsValue = gitIntegrationSettings;
    if (gitIntegrationSettingsValue != null) {
      map['gitIntegrationSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3AgentGitIntegrationSettings,
              Map<String, dynamic>>(
          gitIntegrationSettingsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final securitySettingsValue = securitySettings;
    if (securitySettingsValue != null) {
      map['securitySettings'] = securitySettingsValue;
    }
    final speechToTextSettingsValue = speechToTextSettings;
    if (speechToTextSettingsValue != null) {
      map['speechToTextSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3SpeechToTextSettings,
              Map<String, dynamic>>(
          speechToTextSettingsValue, (value) => value.toMap());
    }
    final startFlowValue = startFlow;
    if (startFlowValue != null) {
      map['startFlow'] = startFlowValue;
    }
    final supportedLanguageCodesValue = supportedLanguageCodes;
    if (supportedLanguageCodesValue != null) {
      map['supportedLanguageCodes'] = supportedLanguageCodesValue;
    }
    final textToSpeechSettingsValue = textToSpeechSettings;
    if (textToSpeechSettingsValue != null) {
      map['textToSpeechSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3TextToSpeechSettings,
              Map<String, dynamic>>(
          textToSpeechSettingsValue, (value) => value.toMap());
    }
    map['timeZone'] = timeZone;
    return map;
  }

  factory AgentArgs.fromMap(Map<String, dynamic> map) {
    return AgentArgs(
      advancedSettings: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3AdvancedSettings>(map['advancedSettings']),
      answerFeedbackSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings>(
          map['answerFeedbackSettings']),
      avatarUri: pulumi.Input.asOptionalInput<String>(map['avatarUri']),
      defaultLanguageCode:
          pulumi.Input.asInput<String>(map['defaultLanguageCode']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableSpellCorrection:
          pulumi.Input.asOptionalInput<bool>(map['enableSpellCorrection']),
      enableStackdriverLogging:
          pulumi.Input.asOptionalInput<bool>(map['enableStackdriverLogging']),
      genAppBuilderSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings>(
          map['genAppBuilderSettings']),
      gitIntegrationSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3AgentGitIntegrationSettings>(
          map['gitIntegrationSettings']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      locked: pulumi.Input.asOptionalInput<bool>(map['locked']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securitySettings:
          pulumi.Input.asOptionalInput<String>(map['securitySettings']),
      speechToTextSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3SpeechToTextSettings>(
          map['speechToTextSettings']),
      startFlow: pulumi.Input.asOptionalInput<String>(map['startFlow']),
      supportedLanguageCodes: pulumi.Input.asOptionalInput<List<String>>(
          map['supportedLanguageCodes']),
      textToSpeechSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3TextToSpeechSettings>(
          map['textToSpeechSettings']),
      timeZone: pulumi.Input.asInput<String>(map['timeZone']),
    );
  }
}

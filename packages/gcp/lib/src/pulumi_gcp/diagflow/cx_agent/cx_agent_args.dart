// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_agent_advanced_settings/cx_agent_advanced_settings.dart';
import '../cx_agent_answer_feedback_settings/cx_agent_answer_feedback_settings.dart';
import '../cx_agent_client_certificate_settings/cx_agent_client_certificate_settings.dart';
import '../cx_agent_gen_app_builder_settings/cx_agent_gen_app_builder_settings.dart';
import '../cx_agent_git_integration_settings/cx_agent_git_integration_settings.dart';
import '../cx_agent_personalization_settings/cx_agent_personalization_settings.dart';
import '../cx_agent_speech_to_text_settings/cx_agent_speech_to_text_settings.dart';
import '../cx_agent_text_to_speech_settings/cx_agent_text_to_speech_settings.dart';

/// The set of arguments for CxAgent.
class CxAgentArgs {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxAgentAdvancedSettings>? advancedSettings;

  /// Answer feedback collection settings.
  /// Structure is documented below.
  final pulumi.Input<CxAgentAnswerFeedbackSettings>? answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration.
  final pulumi.Input<String>? avatarUri;

  /// Settings for custom client certificates.
  /// Structure is documented below.
  final pulumi.Input<CxAgentClientCertificateSettings>?
      clientCertificateSettings;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  final pulumi.Input<String> defaultLanguageCode;
  final pulumi.Input<bool>? deleteChatEngineOnDestroy;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the agent, unique within the location.
  final pulumi.Input<String> displayName;

  /// Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  final pulumi.Input<bool>? enableMultiLanguageTraining;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  final pulumi.Input<bool>? enableSpellCorrection;

  /// (Optional, Deprecated)
  /// Determines whether this agent should log conversation queries.
  ///
  /// > **Warning:** `enable_stackdriver_logging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGenAppBuilderSettings>? genAppBuilderSettings;

  /// Git integration settings for this agent.
  /// Structure is documented below.
  final pulumi.Input<CxAgentGitIntegrationSettings>? gitIntegrationSettings;

  /// The name of the location this agent is located in.
  /// > **Note:** The first time you are deploying an Agent in your project you must configure location settings.
  /// This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
  /// Another options is to use global location so you don't need to manually configure location settings.
  final pulumi.Input<String> location;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  final pulumi.Input<bool>? locked;

  /// Settings for end user personalization.
  /// Structure is documented below.
  final pulumi.Input<CxAgentPersonalizationSettings>? personalizationSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  final pulumi.Input<String>? securitySettings;

  /// Settings related to speech recognition.
  /// Structure is documented below.
  final pulumi.Input<CxAgentSpeechToTextSettings>? speechToTextSettings;

  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/playbooks/<PlaybookID>**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  final pulumi.Input<String>? startPlaybook;

  /// The list of all languages supported by this agent (except for the default_language_code).
  final pulumi.Input<List<String>>? supportedLanguageCodes;

  /// Settings related to speech synthesizing.
  /// Structure is documented below.
  final pulumi.Input<CxAgentTextToSpeechSettings>? textToSpeechSettings;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  final pulumi.Input<String> timeZone;

  CxAgentArgs({
    this.advancedSettings,
    this.answerFeedbackSettings,
    this.avatarUri,
    this.clientCertificateSettings,
    required this.defaultLanguageCode,
    this.deleteChatEngineOnDestroy,
    this.description,
    required this.displayName,
    this.enableMultiLanguageTraining,
    this.enableSpellCorrection,
    this.enableStackdriverLogging,
    this.genAppBuilderSettings,
    this.gitIntegrationSettings,
    required this.location,
    this.locked,
    this.personalizationSettings,
    this.project,
    this.securitySettings,
    this.speechToTextSettings,
    this.startPlaybook,
    this.supportedLanguageCodes,
    this.textToSpeechSettings,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentAdvancedSettings, Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    final answerFeedbackSettingsValue = answerFeedbackSettings;
    if (answerFeedbackSettingsValue != null) {
      map['answerFeedbackSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentAnswerFeedbackSettings, Map<String, dynamic>>(
          answerFeedbackSettingsValue, (value) => value.toMap());
    }
    final avatarUriValue = avatarUri;
    if (avatarUriValue != null) {
      map['avatarUri'] = avatarUriValue;
    }
    final clientCertificateSettingsValue = clientCertificateSettings;
    if (clientCertificateSettingsValue != null) {
      map['clientCertificateSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentClientCertificateSettings, Map<String, dynamic>>(
          clientCertificateSettingsValue, (value) => value.toMap());
    }
    map['defaultLanguageCode'] = defaultLanguageCode;
    final deleteChatEngineOnDestroyValue = deleteChatEngineOnDestroy;
    if (deleteChatEngineOnDestroyValue != null) {
      map['deleteChatEngineOnDestroy'] = deleteChatEngineOnDestroyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final enableMultiLanguageTrainingValue = enableMultiLanguageTraining;
    if (enableMultiLanguageTrainingValue != null) {
      map['enableMultiLanguageTraining'] = enableMultiLanguageTrainingValue;
    }
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
              CxAgentGenAppBuilderSettings, Map<String, dynamic>>(
          genAppBuilderSettingsValue, (value) => value.toMap());
    }
    final gitIntegrationSettingsValue = gitIntegrationSettings;
    if (gitIntegrationSettingsValue != null) {
      map['gitIntegrationSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentGitIntegrationSettings, Map<String, dynamic>>(
          gitIntegrationSettingsValue, (value) => value.toMap());
    }
    map['location'] = location;
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    final personalizationSettingsValue = personalizationSettings;
    if (personalizationSettingsValue != null) {
      map['personalizationSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentPersonalizationSettings, Map<String, dynamic>>(
          personalizationSettingsValue, (value) => value.toMap());
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
              CxAgentSpeechToTextSettings, Map<String, dynamic>>(
          speechToTextSettingsValue, (value) => value.toMap());
    }
    final startPlaybookValue = startPlaybook;
    if (startPlaybookValue != null) {
      map['startPlaybook'] = startPlaybookValue;
    }
    final supportedLanguageCodesValue = supportedLanguageCodes;
    if (supportedLanguageCodesValue != null) {
      map['supportedLanguageCodes'] = supportedLanguageCodesValue;
    }
    final textToSpeechSettingsValue = textToSpeechSettings;
    if (textToSpeechSettingsValue != null) {
      map['textToSpeechSettings'] = pulumi.Input.mapOptionalInputValue<
              CxAgentTextToSpeechSettings, Map<String, dynamic>>(
          textToSpeechSettingsValue, (value) => value.toMap());
    }
    map['timeZone'] = timeZone;
    return map;
  }

  factory CxAgentArgs.fromMap(Map<String, dynamic> map) {
    return CxAgentArgs(
      advancedSettings: pulumi.Input.asOptionalInput<CxAgentAdvancedSettings>(
          map['advancedSettings']),
      answerFeedbackSettings:
          pulumi.Input.asOptionalInput<CxAgentAnswerFeedbackSettings>(
              map['answerFeedbackSettings']),
      avatarUri: pulumi.Input.asOptionalInput<String>(map['avatarUri']),
      clientCertificateSettings:
          pulumi.Input.asOptionalInput<CxAgentClientCertificateSettings>(
              map['clientCertificateSettings']),
      defaultLanguageCode:
          pulumi.Input.asInput<String>(map['defaultLanguageCode']),
      deleteChatEngineOnDestroy:
          pulumi.Input.asOptionalInput<bool>(map['deleteChatEngineOnDestroy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enableMultiLanguageTraining: pulumi.Input.asOptionalInput<bool>(
          map['enableMultiLanguageTraining']),
      enableSpellCorrection:
          pulumi.Input.asOptionalInput<bool>(map['enableSpellCorrection']),
      enableStackdriverLogging:
          pulumi.Input.asOptionalInput<bool>(map['enableStackdriverLogging']),
      genAppBuilderSettings:
          pulumi.Input.asOptionalInput<CxAgentGenAppBuilderSettings>(
              map['genAppBuilderSettings']),
      gitIntegrationSettings:
          pulumi.Input.asOptionalInput<CxAgentGitIntegrationSettings>(
              map['gitIntegrationSettings']),
      location: pulumi.Input.asInput<String>(map['location']),
      locked: pulumi.Input.asOptionalInput<bool>(map['locked']),
      personalizationSettings:
          pulumi.Input.asOptionalInput<CxAgentPersonalizationSettings>(
              map['personalizationSettings']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      securitySettings:
          pulumi.Input.asOptionalInput<String>(map['securitySettings']),
      speechToTextSettings:
          pulumi.Input.asOptionalInput<CxAgentSpeechToTextSettings>(
              map['speechToTextSettings']),
      startPlaybook: pulumi.Input.asOptionalInput<String>(map['startPlaybook']),
      supportedLanguageCodes: pulumi.Input.asOptionalInput<List<String>>(
          map['supportedLanguageCodes']),
      textToSpeechSettings:
          pulumi.Input.asOptionalInput<CxAgentTextToSpeechSettings>(
              map['textToSpeechSettings']),
      timeZone: pulumi.Input.asInput<String>(map['timeZone']),
    );
  }
}

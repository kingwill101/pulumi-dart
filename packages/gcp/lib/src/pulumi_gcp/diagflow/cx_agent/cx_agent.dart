import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_agent_advanced_settings/cx_agent_advanced_settings.dart';
import '../cx_agent_answer_feedback_settings/cx_agent_answer_feedback_settings.dart';
import '../cx_agent_client_certificate_settings/cx_agent_client_certificate_settings.dart';
import '../cx_agent_gen_app_builder_settings/cx_agent_gen_app_builder_settings.dart';
import '../cx_agent_git_integration_settings/cx_agent_git_integration_settings.dart';
import '../cx_agent_personalization_settings/cx_agent_personalization_settings.dart';
import '../cx_agent_speech_to_text_settings/cx_agent_speech_to_text_settings.dart';
import '../cx_agent_text_to_speech_settings/cx_agent_text_to_speech_settings.dart';
import 'cx_agent_args.dart';

/// Agents are best described as Natural Language Understanding (NLU) modules that transform user requests into actionable data. You can include agents in your app, product, or service to determine user intent and respond to the user in a natural way.
///
///
/// To get more information about Agent, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
///
///
/// ## Example Usage
///
/// ### Dialogflowcx Agent Full
///
///
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/agents/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default projects/{{project}}/locations/{{location}}/agents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxAgent:CxAgent default {{location}}/{{name}}
/// ```
class CxAgent extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentAdvancedSettings> advancedSettings;

  /// Answer feedback collection settings.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentAnswerFeedbackSettings?>
      answerFeedbackSettings;

  /// The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted Web Demo integration.
  late final pulumi.Output<String?> avatarUri;

  /// Settings for custom client certificates.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentClientCertificateSettings?>
      clientCertificateSettings;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  late final pulumi.Output<String> defaultLanguageCode;
  late final pulumi.Output<bool?> deleteChatEngineOnDestroy;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;

  /// The human-readable name of the agent, unique within the location.
  late final pulumi.Output<String> displayName;

  /// Enable training multi-lingual models for this agent. These models will be trained on all the languages supported by the agent.
  late final pulumi.Output<bool?> enableMultiLanguageTraining;

  /// Indicates if automatic spell correction is enabled in detect intent requests.
  late final pulumi.Output<bool?> enableSpellCorrection;

  /// (Optional, Deprecated)
  /// Determines whether this agent should log conversation queries.
  ///
  /// > **Warning:** `enable_stackdriver_logging` is deprecated and will be removed in a future major release. Please use `advanced_settings.logging_settings.enable_stackdriver_logging`instead.
  late final pulumi.Output<bool?> enableStackdriverLogging;

  /// Gen App Builder-related agent-level settings.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentGenAppBuilderSettings> genAppBuilderSettings;

  /// Git integration settings for this agent.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentGitIntegrationSettings?>
      gitIntegrationSettings;

  /// The name of the location this agent is located in.
  /// > **Note:** The first time you are deploying an Agent in your project you must configure location settings.
  /// This is a one time step but at the moment you can only [configure location settings](https://cloud.google.com/dialogflow/cx/docs/concept/region#location-settings) via the Dialogflow CX console.
  /// Another options is to use global location so you don't need to manually configure location settings.
  late final pulumi.Output<String> location;

  /// Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for [agents.restore][].
  late final pulumi.Output<bool?> locked;

  /// The unique identifier of the agent.
  late final pulumi.Output<String> name;

  /// Settings for end user personalization.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentPersonalizationSettings?>
      personalizationSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A read only boolean field reflecting Zone Isolation status of the agent.
  late final pulumi.Output<bool> satisfiesPzi;

  /// A read only boolean field reflecting Zone Separation status of the agent.
  late final pulumi.Output<bool> satisfiesPzs;

  /// Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  late final pulumi.Output<String?> securitySettings;

  /// Settings related to speech recognition.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentSpeechToTextSettings?> speechToTextSettings;

  /// Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final pulumi.Output<String> startFlow;

  /// Name of the start playbook in this agent. A start playbook will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: **projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/playbooks/<PlaybookID>**. Currently only the default playbook with id "00000000-0000-0000-0000-000000000000" is allowed.
  late final pulumi.Output<String?> startPlaybook;

  /// The list of all languages supported by this agent (except for the default_language_code).
  late final pulumi.Output<List<String>?> supportedLanguageCodes;

  /// Settings related to speech synthesizing.
  /// Structure is documented below.
  late final pulumi.Output<CxAgentTextToSpeechSettings?> textToSpeechSettings;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  late final pulumi.Output<String> timeZone;

  CxAgent(
    String name, {
    CxAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxAgent:CxAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSettings =
        registerOutput<CxAgentAdvancedSettings>('advancedSettings');
    this.answerFeedbackSettings =
        registerOutput<CxAgentAnswerFeedbackSettings?>(
            'answerFeedbackSettings');
    this.avatarUri = registerOutput<String?>('avatarUri');
    this.clientCertificateSettings =
        registerOutput<CxAgentClientCertificateSettings?>(
            'clientCertificateSettings');
    this.defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    this.deleteChatEngineOnDestroy =
        registerOutput<bool?>('deleteChatEngineOnDestroy');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enableMultiLanguageTraining =
        registerOutput<bool?>('enableMultiLanguageTraining');
    this.enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    this.enableStackdriverLogging =
        registerOutput<bool?>('enableStackdriverLogging');
    this.genAppBuilderSettings =
        registerOutput<CxAgentGenAppBuilderSettings>('genAppBuilderSettings');
    this.gitIntegrationSettings =
        registerOutput<CxAgentGitIntegrationSettings?>(
            'gitIntegrationSettings');
    this.location = registerOutput<String>('location');
    this.locked = registerOutput<bool?>('locked');
    this.name = registerOutput<String>('name');
    this.personalizationSettings =
        registerOutput<CxAgentPersonalizationSettings?>(
            'personalizationSettings');
    this.project = registerOutput<String>('project');
    this.satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.securitySettings = registerOutput<String?>('securitySettings');
    this.speechToTextSettings =
        registerOutput<CxAgentSpeechToTextSettings?>('speechToTextSettings');
    this.startFlow = registerOutput<String>('startFlow');
    this.startPlaybook = registerOutput<String?>('startPlaybook');
    this.supportedLanguageCodes =
        registerOutput<List<String>?>('supportedLanguageCodes');
    this.textToSpeechSettings =
        registerOutput<CxAgentTextToSpeechSettings?>('textToSpeechSettings');
    this.timeZone = registerOutput<String>('timeZone');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_generative_settings_fallback_settings/cx_generative_settings_fallback_settings.dart';
import '../cx_generative_settings_generative_safety_settings/cx_generative_settings_generative_safety_settings.dart';
import '../cx_generative_settings_knowledge_connector_settings/cx_generative_settings_knowledge_connector_settings.dart';
import '../cx_generative_settings_llm_model_settings/cx_generative_settings_llm_model_settings.dart';
import 'cx_generative_settings_args.dart';

/// Settings for Generative AI.
///
///
/// To get more information about GenerativeSettings, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents/getGenerativeSettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Generative Settings Full
///
///
///
///
/// ## Import
///
/// GenerativeSettings can be imported using any of these accepted formats:
///
/// * `{{parent}}/generativeSettings`
///
/// * `{{parent}}`
///
/// When using the `pulumi import` command, GenerativeSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings default {{parent}}/generativeSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings default {{parent}}
/// ```
class CxGenerativeSettings extends pulumi.CustomResource {
  /// Settings for Generative Fallback.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsFallbackSettings?>
      fallbackSettings;

  /// Settings for Generative Safety.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsGenerativeSafetySettings?>
      generativeSafetySettings;

  /// Settings for knowledge connector.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsKnowledgeConnectorSettings?>
      knowledgeConnectorSettings;

  /// Language for this settings.
  late final pulumi.Output<String> languageCode;

  /// LLM model settings.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsLlmModelSettings?>
      llmModelSettings;

  /// The unique identifier of the generativeSettings.
  /// Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/generativeSettings.
  late final pulumi.Output<String> name;

  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  CxGenerativeSettings(
    String name, {
    CxGenerativeSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fallbackSettings =
        registerOutput<CxGenerativeSettingsFallbackSettings?>(
            'fallbackSettings');
    this.generativeSafetySettings =
        registerOutput<CxGenerativeSettingsGenerativeSafetySettings?>(
            'generativeSafetySettings');
    this.knowledgeConnectorSettings =
        registerOutput<CxGenerativeSettingsKnowledgeConnectorSettings?>(
            'knowledgeConnectorSettings');
    this.languageCode = registerOutput<String>('languageCode');
    this.llmModelSettings =
        registerOutput<CxGenerativeSettingsLlmModelSettings?>(
            'llmModelSettings');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_intent_parameter/cx_intent_parameter.dart';
import '../cx_intent_training_phrase/cx_intent_training_phrase.dart';
import 'cx_intent_args.dart';

/// An intent represents a user's intent to interact with a conversational agent.
///
///
/// To get more information about Intent, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Intent Full
///
///
///
///
/// ## Import
///
/// Intent can be imported using any of these accepted formats:
///
/// * `{{parent}}/intents/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Intent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxIntent:CxIntent default {{parent}}/intents/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxIntent:CxIntent default {{parent}}/{{name}}
/// ```
class CxIntent extends pulumi.CustomResource {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  late final pulumi.Output<String?> description;

  /// The human-readable name of the intent, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// The Default Negative Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_negative_intent = true` because they will compete to control a single Default Negative Intent resource in GCP.
  late final pulumi.Output<bool?> isDefaultNegativeIntent;

  /// Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// The Default Welcome Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_welcome_intent = true` because they will compete to control a single Default Welcome Intent resource in GCP.
  late final pulumi.Output<bool?> isDefaultWelcomeIntent;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// To manage the fallback intent, set `is_default_negative_intent = true`
  late final pulumi.Output<bool?> isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The language of the following fields in intent:
  /// Intent.training_phrases.parts.text
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;

  /// The unique identifier of the intent.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/intents/<Intent ID>.
  late final pulumi.Output<String> name;

  /// The collection of parameters associated with the intent.
  /// Structure is documented below.
  late final pulumi.Output<List<CxIntentParameter>?> parameters;

  /// The agent to create an intent for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
  /// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final pulumi.Output<int?> priority;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The collection of training phrases the agent is trained on to identify the intent.
  /// Structure is documented below.
  late final pulumi.Output<List<CxIntentTrainingPhrase>?> trainingPhrases;

  CxIntent(
    String name, {
    CxIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxIntent:CxIntent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.isDefaultNegativeIntent =
        registerOutput<bool?>('isDefaultNegativeIntent');
    this.isDefaultWelcomeIntent =
        registerOutput<bool?>('isDefaultWelcomeIntent');
    this.isFallback = registerOutput<bool?>('isFallback');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<List<CxIntentParameter>?>('parameters');
    this.parent = registerOutput<String?>('parent');
    this.priority = registerOutput<int?>('priority');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.trainingPhrases =
        registerOutput<List<CxIntentTrainingPhrase>?>('trainingPhrases');
  }
}

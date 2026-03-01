import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent_parameter_response.dart';
import 'google_cloud_dialogflow_cx_v3_intent_training_phrase_response.dart';
import 'intent_dialogflow_v3_args.dart';

/// Creates an intent in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class IntentDialogflowV3 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  late final pulumi.Output<String> description;

  /// The human-readable name of the intent, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  late final pulumi.Output<bool> isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  late final pulumi.Output<Map<String, String>> labels;

  /// The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;

  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  late final pulumi.Output<String> name;

  /// The collection of parameters associated with the intent.
  late final pulumi.Output<
    List<GoogleCloudDialogflowCxV3IntentParameterResponse>
  >
  parameters;

  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final pulumi.Output<int> priority;
  late final pulumi.Output<String> project;

  /// The collection of training phrases the agent is trained on to identify the intent.
  late final pulumi.Output<
    List<GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse>
  >
  trainingPhrases;

  /// Creates a new [IntentDialogflowV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntentDialogflowV3]. {@macro pulumi_dialogflow_v3_intent_dialogflow_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntentDialogflowV3(
    String name, {
    IntentDialogflowV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3:Intent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.agentId = registerOutput<String>('agentId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.isFallback = registerOutput<bool>('isFallback');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<GoogleCloudDialogflowCxV3IntentParameterResponse>>(
          'parameters',
        );
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.trainingPhrases =
        registerOutput<
          List<GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse>
        >('trainingPhrases');
  }
}

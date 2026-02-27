// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_intent_parameter/cx_intent_parameter.dart';
import '../cx_intent_training_phrase/cx_intent_training_phrase.dart';

/// The set of arguments for CxIntent.
class CxIntentArgs {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final Input<String>? description;

  /// The human-readable name of the intent, unique within the agent.
  final Input<String> displayName;

  /// Marks this as the [Default Negative Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative) for an agent. When you create an agent, a Default Negative Intent is created automatically.
  /// The Default Negative Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_negative_intent = true` because they will compete to control a single Default Negative Intent resource in GCP.
  final Input<bool>? isDefaultNegativeIntent;

  /// Marks this as the [Default Welcome Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome) for an agent. When you create an agent, a Default Welcome Intent is created automatically.
  /// The Default Welcome Intent cannot be deleted; deleting the `gcp.diagflow.CxIntent` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxIntent` resources linked to the same agent with `is_default_welcome_intent = true` because they will compete to control a single Default Welcome Intent resource in GCP.
  final Input<bool>? isDefaultWelcomeIntent;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation.
  /// Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// To manage the fallback intent, set `is_default_negative_intent = true`
  final Input<bool>? isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes.
  /// Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The language of the following fields in intent:
  /// Intent.training_phrases.parts.text
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;

  /// The collection of parameters associated with the intent.
  /// Structure is documented below.
  final Input<List<CxIntentParameter>>? parameters;

  /// The agent to create an intent for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the Normal priority in the console.
  /// If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final Input<int>? priority;

  /// The collection of training phrases the agent is trained on to identify the intent.
  /// Structure is documented below.
  final Input<List<CxIntentTrainingPhrase>>? trainingPhrases;

  CxIntentArgs({
    this.description,
    required this.displayName,
    this.isDefaultNegativeIntent,
    this.isDefaultWelcomeIntent,
    this.isFallback,
    this.labels,
    this.languageCode,
    this.parameters,
    this.parent,
    this.priority,
    this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final isDefaultNegativeIntentValue = isDefaultNegativeIntent;
    if (isDefaultNegativeIntentValue != null) {
      map['isDefaultNegativeIntent'] = isDefaultNegativeIntentValue;
    }
    final isDefaultWelcomeIntentValue = isDefaultWelcomeIntent;
    if (isDefaultWelcomeIntentValue != null) {
      map['isDefaultWelcomeIntent'] = isDefaultWelcomeIntentValue;
    }
    final isFallbackValue = isFallback;
    if (isFallbackValue != null) {
      map['isFallback'] = isFallbackValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<List<CxIntentParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<CxIntentParameter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final trainingPhrasesValue = trainingPhrases;
    if (trainingPhrasesValue != null) {
      map['trainingPhrases'] = Input.mapOptionalInputValue<
              List<CxIntentTrainingPhrase>, List<Map<String, dynamic>>>(
          trainingPhrasesValue,
          (value) =>
              Input.encodeList<CxIntentTrainingPhrase, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory CxIntentArgs.fromMap(Map<String, dynamic> map) {
    return CxIntentArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      isDefaultNegativeIntent:
          Input.asOptionalInput<bool>(map['isDefaultNegativeIntent']),
      isDefaultWelcomeIntent:
          Input.asOptionalInput<bool>(map['isDefaultWelcomeIntent']),
      isFallback: Input.asOptionalInput<bool>(map['isFallback']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      parameters:
          Input.asOptionalInput<List<CxIntentParameter>>(map['parameters']),
      parent: Input.asOptionalInput<String>(map['parent']),
      priority: Input.asOptionalInput<int>(map['priority']),
      trainingPhrases: Input.asOptionalInput<List<CxIntentTrainingPhrase>>(
          map['trainingPhrases']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_parameter.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_training_phrase.dart';

/// The set of arguments for Intent.
class IntentArgs4 {
  final Input<String> agentId;

  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final Input<String>? description;

  /// The human-readable name of the intent, unique within the agent.
  final Input<String> displayName;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final Input<bool>? isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys-contextual" means the intent is a contextual intent.
  final Input<Map<String, String>>? labels;

  /// The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final Input<String>? name;

  /// The collection of parameters associated with the intent.
  final Input<List<GoogleCloudDialogflowCxV3beta1IntentParameter>>? parameters;

  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final Input<int>? priority;
  final Input<String>? project;

  /// The collection of training phrases the agent is trained on to identify the intent.
  final Input<List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>>?
      trainingPhrases;

  IntentArgs4({
    required this.agentId,
    this.description,
    required this.displayName,
    this.isFallback,
    this.labels,
    this.languageCode,
    this.location,
    this.name,
    this.parameters,
    this.priority,
    this.project,
    this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1IntentParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1IntentParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trainingPhrasesValue = trainingPhrases;
    if (trainingPhrasesValue != null) {
      map['trainingPhrases'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>,
              List<Map<String, dynamic>>>(
          trainingPhrasesValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory IntentArgs4.fromMap(Map<String, dynamic> map) {
    return IntentArgs4(
      agentId: Input.asInput<String>(map['agentId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      isFallback: Input.asOptionalInput<bool>(map['isFallback']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1IntentParameter>>(
          map['parameters']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      trainingPhrases: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>>(
          map['trainingPhrases']),
    );
  }
}

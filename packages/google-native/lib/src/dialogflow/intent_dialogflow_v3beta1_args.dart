// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_intent_parameter.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_training_phrase.dart';

/// {@template pulumi_dialogflow_v3beta1_intent_dialogflow_v3beta1_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_intent_dialogflow_v3beta1_args_doc}
class IntentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;

  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final pulumi.Input<String>? description;

  /// The human-readable name of the intent, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final pulumi.Input<bool>? isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys-contextual" means the intent is a contextual intent.
  final pulumi.Input<Map<String, String>>? labels;

  /// The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final pulumi.Input<String>? name;

  /// The collection of parameters associated with the intent.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1IntentParameter>>?
      parameters;

  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// The collection of training phrases the agent is trained on to identify the intent.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>>?
      trainingPhrases;

  /// Creates a new [IntentDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [description] Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  /// [displayName] The human-readable name of the intent, unique within the agent.
  /// [isFallback] Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  /// [labels] The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys-contextual" means the intent is a contextual intent.
  /// [languageCode] The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  /// [parameters] The collection of parameters associated with the intent.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [project] Optional.
  /// [trainingPhrases] The collection of training phrases the agent is trained on to identify the intent.
  IntentDialogflowV3beta1Args({
    required String agentId,
    String? description,
    required String displayName,
    bool? isFallback,
    Map<String, String>? labels,
    String? languageCode,
    String? location,
    String? name,
    List<GoogleCloudDialogflowCxV3beta1IntentParameter>? parameters,
    int? priority,
    String? project,
    List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>? trainingPhrases,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        isFallback = pulumi.Input.asOptionalInput<bool>(isFallback),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        parameters = pulumi.Input.asOptionalInput<
            List<GoogleCloudDialogflowCxV3beta1IntentParameter>>(parameters),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        trainingPhrases = pulumi.Input.asOptionalInput<
                List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>>(
            trainingPhrases);

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
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1IntentParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<
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
      map['trainingPhrases'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>,
              List<Map<String, dynamic>>>(
          trainingPhrasesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory IntentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return IntentDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      isFallback: map['isFallback'] == null ? null : map['isFallback'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1IntentParameter>(
              map['parameters'],
              (value) => GoogleCloudDialogflowCxV3beta1IntentParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      trainingPhrases: map['trainingPhrases'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>(
              map['trainingPhrases'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

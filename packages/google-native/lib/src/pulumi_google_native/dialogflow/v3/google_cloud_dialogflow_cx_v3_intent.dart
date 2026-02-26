// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_intent_parameter.dart';
import 'google_cloud_dialogflow_cx_v3_intent_training_phrase.dart';

/// An intent represents a user's intent to interact with a conversational agent. You can provide information for the Dialogflow API to use to match user input to an intent by adding training phrases (i.e., examples of user input) to your intent.
class GoogleCloudDialogflowCxV3Intent {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final String? description;

  /// The human-readable name of the intent, unique within the agent.
  final String displayName;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final bool? isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  final Map<String, String>? labels;

  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final String? name;

  /// The collection of parameters associated with the intent.
  final List<GoogleCloudDialogflowCxV3IntentParameter>? parameters;

  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final int? priority;

  /// The collection of training phrases the agent is trained on to identify the intent.
  final List<GoogleCloudDialogflowCxV3IntentTrainingPhrase>? trainingPhrases;

  GoogleCloudDialogflowCxV3Intent({
    this.description,
    required this.displayName,
    this.isFallback,
    this.labels,
    this.name,
    this.parameters,
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
    final isFallbackValue = isFallback;
    if (isFallbackValue != null) {
      map['isFallback'] = isFallbackValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
          GoogleCloudDialogflowCxV3IntentParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final trainingPhrasesValue = trainingPhrases;
    if (trainingPhrasesValue != null) {
      map['trainingPhrases'] = Input.encodeList<
          GoogleCloudDialogflowCxV3IntentTrainingPhrase,
          Map<String, dynamic>>(trainingPhrasesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3Intent.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Intent(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      isFallback: map['isFallback'] == null ? null : map['isFallback'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3IntentParameter>(
              map['parameters'],
              (value) => GoogleCloudDialogflowCxV3IntentParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
      trainingPhrases: map['trainingPhrases'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3IntentTrainingPhrase>(
              map['trainingPhrases'],
              (value) => GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

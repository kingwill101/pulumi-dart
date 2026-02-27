// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent_parameter_response.dart';
import 'google_cloud_dialogflow_cx_v3_intent_training_phrase_response.dart';

/// An intent represents a user's intent to interact with a conversational agent. You can provide information for the Dialogflow API to use to match user input to an intent by adding training phrases (i.e., examples of user input) to your intent.
class GoogleCloudDialogflowCxV3IntentResponse {
  /// Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  final String description;

  /// The human-readable name of the intent, unique within the agent.
  final String displayName;

  /// Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  final bool isFallback;

  /// The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  final Map<String, String> labels;

  /// The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  final String name;

  /// The collection of parameters associated with the intent.
  final List<GoogleCloudDialogflowCxV3IntentParameterResponse> parameters;

  /// The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final int priority;

  /// The collection of training phrases the agent is trained on to identify the intent.
  final List<GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse>
      trainingPhrases;

  GoogleCloudDialogflowCxV3IntentResponse({
    required this.description,
    required this.displayName,
    required this.isFallback,
    required this.labels,
    required this.name,
    required this.parameters,
    required this.priority,
    required this.trainingPhrases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['isFallback'] = isFallback;
    map['labels'] = labels;
    map['name'] = name;
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3IntentParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['priority'] = priority;
    map['trainingPhrases'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse,
        Map<String, dynamic>>(trainingPhrases, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3IntentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      isFallback: map['isFallback'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parameters: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3IntentParameterResponse>(
          map['parameters'],
          (value) => GoogleCloudDialogflowCxV3IntentParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      trainingPhrases: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse>(
          map['trainingPhrases'],
          (value) =>
              GoogleCloudDialogflowCxV3IntentTrainingPhraseResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

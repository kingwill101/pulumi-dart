// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_intent_training_phrase_part_response.dart';

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2IntentTrainingPhraseResponse {
  /// The unique identifier of this training phrase.
  final String name;

  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.
  final List<GoogleCloudDialogflowV2IntentTrainingPhrasePartResponse> parts;

  /// Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.
  final int timesAddedCount;

  /// The type of the training phrase.
  final String type;

  GoogleCloudDialogflowV2IntentTrainingPhraseResponse({
    required this.name,
    required this.parts,
    required this.timesAddedCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parts'] = Input.encodeList<
        GoogleCloudDialogflowV2IntentTrainingPhrasePartResponse,
        Map<String, dynamic>>(parts, (value) => value.toMap());
    map['timesAddedCount'] = timesAddedCount;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentTrainingPhraseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentTrainingPhraseResponse(
      name: map['name'] as String,
      parts: Input.decodeList<
              GoogleCloudDialogflowV2IntentTrainingPhrasePartResponse>(
          map['parts'],
          (value) =>
              GoogleCloudDialogflowV2IntentTrainingPhrasePartResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timesAddedCount: map['timesAddedCount'] as int,
      type: map['type'] as String,
    );
  }
}

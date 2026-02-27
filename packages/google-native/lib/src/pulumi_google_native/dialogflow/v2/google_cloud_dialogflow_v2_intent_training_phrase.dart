// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_training_phrase_part.dart';
import 'google_cloud_dialogflow_v2_intent_training_phrase_type.dart';

/// Represents an example that the agent is trained on.
class GoogleCloudDialogflowV2IntentTrainingPhrase {
  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.
  final List<GoogleCloudDialogflowV2IntentTrainingPhrasePart> parts;

  /// Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.
  final int? timesAddedCount;

  /// The type of the training phrase.
  final GoogleCloudDialogflowV2IntentTrainingPhraseType type;

  GoogleCloudDialogflowV2IntentTrainingPhrase({
    required this.parts,
    this.timesAddedCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parts'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentTrainingPhrasePart,
        Map<String, dynamic>>(parts, (value) => value.toMap());
    final timesAddedCountValue = timesAddedCount;
    if (timesAddedCountValue != null) {
      map['timesAddedCount'] = timesAddedCountValue;
    }
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentTrainingPhrase.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentTrainingPhrase(
      parts: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentTrainingPhrasePart>(
          map['parts'],
          (value) => GoogleCloudDialogflowV2IntentTrainingPhrasePart.fromMap(
              (value as Map).cast<String, dynamic>())),
      timesAddedCount:
          map['timesAddedCount'] == null ? null : map['timesAddedCount'] as int,
      type: GoogleCloudDialogflowV2IntentTrainingPhraseType.fromValue(
          map['type'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_intent_training_phrase_part_response.dart';

/// Represents an example that the agent is trained on to identify the intent.
class GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse {
  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `parameter_id` field is set.
  final List<GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse>
      parts;

  /// Indicates how many times this example was added to the intent.
  final int repeatCount;

  GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse({
    required this.parts,
    required this.repeatCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parts'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse,
        Map<String, dynamic>>(parts, (value) => value.toMap());
    map['repeatCount'] = repeatCount;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1IntentTrainingPhraseResponse(
      parts: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse>(
          map['parts'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePartResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      repeatCount: map['repeatCount'] as int,
    );
  }
}

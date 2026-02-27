// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_intent_training_phrase_part/cx_intent_training_phrase_part.dart';

class CxIntentTrainingPhrase {
  /// (Output)
  /// The unique identifier of the training phrase.
  final String? id;

  /// The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase.
  /// Note: The API does not automatically annotate training phrases like the Dialogflow Console does.
  /// Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated.
  /// If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set.
  /// If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways:
  /// Part.text is set to a part of the phrase that has no parameters.
  /// Part.text is set to a part of the phrase that you want to annotate, and the parameterId field is set.
  /// Structure is documented below.
  final List<CxIntentTrainingPhrasePart> parts;

  /// Indicates how many times this example was added to the intent.
  final int? repeatCount;

  CxIntentTrainingPhrase({
    this.id,
    required this.parts,
    this.repeatCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['parts'] = pulumi.Input.encodeList<CxIntentTrainingPhrasePart,
        Map<String, dynamic>>(parts, (value) => value.toMap());
    final repeatCountValue = repeatCount;
    if (repeatCountValue != null) {
      map['repeatCount'] = repeatCountValue;
    }
    return map;
  }

  factory CxIntentTrainingPhrase.fromMap(Map<String, dynamic> map) {
    return CxIntentTrainingPhrase(
      id: map['id'] == null ? null : map['id'] as String,
      parts: pulumi.Input.decodeList<CxIntentTrainingPhrasePart>(
          map['parts'],
          (value) => CxIntentTrainingPhrasePart.fromMap(
              (value as Map).cast<String, dynamic>())),
      repeatCount:
          map['repeatCount'] == null ? null : map['repeatCount'] as int,
    );
  }
}

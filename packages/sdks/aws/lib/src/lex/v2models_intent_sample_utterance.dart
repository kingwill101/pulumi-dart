// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentSampleUtterance {
  /// Sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  final pulumi.Input<String> utterance;

  /// Creates a new [V2modelsIntentSampleUtterance].
  /// [utterance] Sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  V2modelsIntentSampleUtterance({required this.utterance});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'utterance': utterance};
  }

  factory V2modelsIntentSampleUtterance.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentSampleUtterance(
      utterance: pulumi.Input.fromValue(map['utterance'] as String),
    );
  }
}

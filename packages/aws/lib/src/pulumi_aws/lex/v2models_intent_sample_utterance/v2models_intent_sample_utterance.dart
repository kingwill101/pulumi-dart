// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentSampleUtterance {
  /// Sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  final String utterance;

  V2modelsIntentSampleUtterance({
    required this.utterance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['utterance'] = utterance;
    return map;
  }

  factory V2modelsIntentSampleUtterance.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentSampleUtterance(
      utterance: map['utterance'] as String,
    );
  }
}

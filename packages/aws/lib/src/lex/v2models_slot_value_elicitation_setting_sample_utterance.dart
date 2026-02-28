// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotValueElicitationSettingSampleUtterance {
  /// The sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  final String utterance;

  /// Creates a new [V2modelsSlotValueElicitationSettingSampleUtterance].
  /// [utterance] The sample utterance that Amazon Lex uses to build its machine-learning model to recognize intents.
  V2modelsSlotValueElicitationSettingSampleUtterance({
    required this.utterance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['utterance'] = utterance;
    return map;
  }

  factory V2modelsSlotValueElicitationSettingSampleUtterance.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotValueElicitationSettingSampleUtterance(
      utterance: map['utterance'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class RuleEvaluationMode {
  /// The mode of an evaluation.
  final String? mode;

  /// Creates a new [RuleEvaluationMode].
  /// [mode] The mode of an evaluation.
  RuleEvaluationMode({this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': ?mode};
  }

  factory RuleEvaluationMode.fromMap(Map<String, dynamic> map) {
    return RuleEvaluationMode(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

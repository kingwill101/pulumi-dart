// ignore_for_file: unused_element, unnecessary_cast

class RuleEvaluationMode {
  /// The mode of an evaluation.
  final String? mode;

  RuleEvaluationMode({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    return map;
  }

  factory RuleEvaluationMode.fromMap(Map<String, dynamic> map) {
    return RuleEvaluationMode(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorProfileLogScrubbingRule {
  /// The variable that is scrubbed from the logs.
  final String matchVariable;

  /// Creates a new [GetFrontdoorProfileLogScrubbingRule].
  /// [matchVariable] The variable that is scrubbed from the logs.
  GetFrontdoorProfileLogScrubbingRule({
    required this.matchVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchVariable': matchVariable,
    };
  }

  factory GetFrontdoorProfileLogScrubbingRule.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileLogScrubbingRule(
      matchVariable: map['matchVariable'] as String,
    );
  }
}


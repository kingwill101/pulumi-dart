// ignore_for_file: unused_element, unnecessary_cast


class FeatureEvaluationRule {
  /// The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  final String? name;
  /// This value is `aws.evidently.splits` if this is an evaluation rule for a launch, and it is `aws.evidently.onlineab` if this is an evaluation rule for an experiment.
  final String? type;

  /// Creates a new [FeatureEvaluationRule].
  /// [name] The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  /// [type] This value is `aws.evidently.splits` if this is an evaluation rule for a launch, and it is `aws.evidently.onlineab` if this is an evaluation rule for an experiment.
  FeatureEvaluationRule({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory FeatureEvaluationRule.fromMap(Map<String, dynamic> map) {
    return FeatureEvaluationRule(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class FeatureEvaluationRule {
  /// The name for the new feature. Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`127`" pulumi-lang-dotnet="`127`" pulumi-lang-go="`127`" pulumi-lang-python="`127`" pulumi-lang-yaml="`127`" pulumi-lang-java="`127`">`127`</span>.
  final String? name;

  /// This value is `aws.evidently.splits` if this is an evaluation rule for a launch, and it is `aws.evidently.onlineab` if this is an evaluation rule for an experiment.
  final String? type;

  FeatureEvaluationRule({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory FeatureEvaluationRule.fromMap(Map<String, dynamic> map) {
    return FeatureEvaluationRule(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

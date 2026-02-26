// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  final List<String>? artifactRule;

  ArtifactRule({
    this.artifactRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactRuleValue = artifactRule;
    if (artifactRuleValue != null) {
      map['artifactRule'] = artifactRuleValue;
    }
    return map;
  }

  factory ArtifactRule.fromMap(Map<String, dynamic> map) {
    return ArtifactRule(
      artifactRule: map['artifactRule'] == null
          ? null
          : (map['artifactRule'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object to declare an in-toto artifact rule
class ArtifactRuleResponse {
  final List<String> artifactRule;

  ArtifactRuleResponse({
    required this.artifactRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactRule'] = artifactRule;
    return map;
  }

  factory ArtifactRuleResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactRuleResponse(
      artifactRule: (map['artifactRule'] as List).cast<String>(),
    );
  }
}

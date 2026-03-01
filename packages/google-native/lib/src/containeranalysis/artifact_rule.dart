// ignore_for_file: unused_element, unnecessary_cast

/// Defines an object to declare an in-toto artifact rule
class ArtifactRule {
  final List<String>? artifactRule;

  /// Creates a new [ArtifactRule].
  /// [artifactRule] Optional.
  ArtifactRule({this.artifactRule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'artifactRule': ?artifactRule};
  }

  factory ArtifactRule.fromMap(Map<String, dynamic> map) {
    return ArtifactRule(
      artifactRule: map['artifactRule'] == null
          ? null
          : (map['artifactRule'] as List).cast<String>(),
    );
  }
}

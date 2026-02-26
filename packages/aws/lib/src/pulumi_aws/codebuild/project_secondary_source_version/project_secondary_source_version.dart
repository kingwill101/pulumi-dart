// ignore_for_file: unused_element, unnecessary_cast

class ProjectSecondarySourceVersion {
  /// An identifier for a source in the build project.
  final String sourceIdentifier;

  /// The source version for the corresponding source identifier.
  /// See [AWS docs](https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ProjectSourceVersion.html#CodeBuild-Type-ProjectSourceVersion-sourceVersion)
  /// for more details.
  final String sourceVersion;

  ProjectSecondarySourceVersion({
    required this.sourceIdentifier,
    required this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceIdentifier'] = sourceIdentifier;
    map['sourceVersion'] = sourceVersion;
    return map;
  }

  factory ProjectSecondarySourceVersion.fromMap(Map<String, dynamic> map) {
    return ProjectSecondarySourceVersion(
      sourceIdentifier: map['sourceIdentifier'] as String,
      sourceVersion: map['sourceVersion'] as String,
    );
  }
}

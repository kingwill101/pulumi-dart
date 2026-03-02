// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSecondarySourceVersion {
  /// An identifier for a source in the build project.
  final pulumi.Input<String> sourceIdentifier;
  /// The source version for the corresponding source identifier.
  /// See [AWS docs](https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ProjectSourceVersion.html#CodeBuild-Type-ProjectSourceVersion-sourceVersion)
  /// for more details.
  final pulumi.Input<String> sourceVersion;

  /// Creates a new [ProjectSecondarySourceVersion].
  /// [sourceIdentifier] An identifier for a source in the build project.
  /// [sourceVersion] The source version for the corresponding source identifier.
  ProjectSecondarySourceVersion({
    required this.sourceIdentifier,
    required this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceIdentifier': sourceIdentifier,
      'sourceVersion': sourceVersion,
    };
  }

  factory ProjectSecondarySourceVersion.fromMap(Map<String, dynamic> map) {
    return ProjectSecondarySourceVersion(
      sourceIdentifier: (map['sourceIdentifier'] as String).input(),
      sourceVersion: (map['sourceVersion'] as String).input(),
    );
  }
}


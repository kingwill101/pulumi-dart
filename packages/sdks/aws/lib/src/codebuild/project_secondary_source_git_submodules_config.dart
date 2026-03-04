// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSecondarySourceGitSubmodulesConfig {
  /// Whether to fetch Git submodules for the AWS CodeBuild build project.
  final pulumi.Input<bool> fetchSubmodules;

  /// Creates a new [ProjectSecondarySourceGitSubmodulesConfig].
  /// [fetchSubmodules] Whether to fetch Git submodules for the AWS CodeBuild build project.
  ProjectSecondarySourceGitSubmodulesConfig({required this.fetchSubmodules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fetchSubmodules': fetchSubmodules};
  }

  factory ProjectSecondarySourceGitSubmodulesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectSecondarySourceGitSubmodulesConfig(
      fetchSubmodules: pulumi.Input.fromValue(map['fetchSubmodules'] as bool),
    );
  }
}

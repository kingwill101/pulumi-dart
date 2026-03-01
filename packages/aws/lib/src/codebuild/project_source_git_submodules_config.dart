// ignore_for_file: unused_element, unnecessary_cast

class ProjectSourceGitSubmodulesConfig {
  /// Whether to fetch Git submodules for the AWS CodeBuild build project.
  final bool fetchSubmodules;

  /// Creates a new [ProjectSourceGitSubmodulesConfig].
  /// [fetchSubmodules] Whether to fetch Git submodules for the AWS CodeBuild build project.
  ProjectSourceGitSubmodulesConfig({required this.fetchSubmodules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fetchSubmodules': fetchSubmodules};
  }

  factory ProjectSourceGitSubmodulesConfig.fromMap(Map<String, dynamic> map) {
    return ProjectSourceGitSubmodulesConfig(
      fetchSubmodules: map['fetchSubmodules'] as bool,
    );
  }
}

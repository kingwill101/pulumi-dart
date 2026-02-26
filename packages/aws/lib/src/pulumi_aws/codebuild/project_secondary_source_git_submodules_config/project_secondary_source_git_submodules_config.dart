// ignore_for_file: unused_element, unnecessary_cast

class ProjectSecondarySourceGitSubmodulesConfig {
  /// Whether to fetch Git submodules for the AWS CodeBuild build project.
  final bool fetchSubmodules;

  ProjectSecondarySourceGitSubmodulesConfig({
    required this.fetchSubmodules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fetchSubmodules'] = fetchSubmodules;
    return map;
  }

  factory ProjectSecondarySourceGitSubmodulesConfig.fromMap(
      Map<String, dynamic> map) {
    return ProjectSecondarySourceGitSubmodulesConfig(
      fetchSubmodules: map['fetchSubmodules'] as bool,
    );
  }
}

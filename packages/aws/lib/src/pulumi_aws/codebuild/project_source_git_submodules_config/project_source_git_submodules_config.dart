// ignore_for_file: unused_element, unnecessary_cast

class ProjectSourceGitSubmodulesConfig {
  /// Whether to fetch Git submodules for the AWS CodeBuild build project.
  final bool fetchSubmodules;

  ProjectSourceGitSubmodulesConfig({
    required this.fetchSubmodules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fetchSubmodules'] = fetchSubmodules;
    return map;
  }

  factory ProjectSourceGitSubmodulesConfig.fromMap(Map<String, dynamic> map) {
    return ProjectSourceGitSubmodulesConfig(
      fetchSubmodules: map['fetchSubmodules'] as bool,
    );
  }
}

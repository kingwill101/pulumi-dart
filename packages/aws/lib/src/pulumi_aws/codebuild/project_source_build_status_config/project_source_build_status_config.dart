// ignore_for_file: unused_element, unnecessary_cast

class ProjectSourceBuildStatusConfig {
  /// Specifies the context of the build status CodeBuild sends to the source provider. The usage of
  /// this parameter depends on the source provider.
  final String? context;

  /// Specifies the target url of the build status CodeBuild sends to the source provider. The
  /// usage of this parameter depends on the source provider.
  final String? targetUrl;

  ProjectSourceBuildStatusConfig({
    this.context,
    this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final targetUrlValue = targetUrl;
    if (targetUrlValue != null) {
      map['targetUrl'] = targetUrlValue;
    }
    return map;
  }

  factory ProjectSourceBuildStatusConfig.fromMap(Map<String, dynamic> map) {
    return ProjectSourceBuildStatusConfig(
      context: map['context'] == null ? null : map['context'] as String,
      targetUrl: map['targetUrl'] == null ? null : map['targetUrl'] as String,
    );
  }
}

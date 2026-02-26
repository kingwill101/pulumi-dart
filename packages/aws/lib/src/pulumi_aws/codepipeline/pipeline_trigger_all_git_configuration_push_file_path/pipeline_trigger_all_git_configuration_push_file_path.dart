// ignore_for_file: unused_element, unnecessary_cast

class PipelineTriggerAllGitConfigurationPushFilePath {
  /// A list of patterns of Git repository file paths that, when a commit is pushed, are to be excluded from starting the pipeline.
  final List<String>? excludes;

  /// A list of patterns of Git repository file paths that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  final List<String>? includes;

  PipelineTriggerAllGitConfigurationPushFilePath({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludesValue = excludes;
    if (excludesValue != null) {
      map['excludes'] = excludesValue;
    }
    final includesValue = includes;
    if (includesValue != null) {
      map['includes'] = includesValue;
    }
    return map;
  }

  factory PipelineTriggerAllGitConfigurationPushFilePath.fromMap(
      Map<String, dynamic> map) {
    return PipelineTriggerAllGitConfigurationPushFilePath(
      excludes: map['excludes'] == null
          ? null
          : (map['excludes'] as List).cast<String>(),
      includes: map['includes'] == null
          ? null
          : (map['includes'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PipelineTriggerAllGitConfigurationPushBranch {
  /// A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  final List<String>? excludes;

  /// A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  final List<String>? includes;

  /// Creates a new [PipelineTriggerAllGitConfigurationPushBranch].
  /// [excludes] A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  /// [includes] A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  PipelineTriggerAllGitConfigurationPushBranch({this.excludes, this.includes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'excludes': ?excludes, 'includes': ?includes};
  }

  factory PipelineTriggerAllGitConfigurationPushBranch.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineTriggerAllGitConfigurationPushBranch(
      excludes: map['excludes'] == null
          ? null
          : (map['excludes'] as List).cast<String>(),
      includes: map['includes'] == null
          ? null
          : (map['includes'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineTriggerGitConfigurationPullRequestBranches {
  /// A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  final pulumi.Input<List<String>>? excludes;
  /// A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  final pulumi.Input<List<String>>? includes;

  /// Creates a new [PipelineTriggerGitConfigurationPullRequestBranches].
  /// [excludes] A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  /// [includes] A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  PipelineTriggerGitConfigurationPullRequestBranches({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'includes': ?includes,
    };
  }

  factory PipelineTriggerGitConfigurationPullRequestBranches.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfigurationPullRequestBranches(
      excludes: map['excludes'] == null ? null : ((map['excludes'] as List).cast<String>()).input(),
      includes: map['includes'] == null ? null : ((map['includes'] as List).cast<String>()).input(),
    );
  }
}


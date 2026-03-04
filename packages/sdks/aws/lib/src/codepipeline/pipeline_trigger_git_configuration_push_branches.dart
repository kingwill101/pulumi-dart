// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineTriggerGitConfigurationPushBranches {
  /// A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  final pulumi.Input<List<String>>? excludes;

  /// A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  final pulumi.Input<List<String>>? includes;

  /// Creates a new [PipelineTriggerGitConfigurationPushBranches].
  /// [excludes] A list of patterns of Git branches that, when a commit is pushed, are to be excluded from starting the pipeline.
  /// [includes] A list of patterns of Git branches that, when a commit is pushed, are to be included as criteria that starts the pipeline.
  PipelineTriggerGitConfigurationPushBranches({this.excludes, this.includes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'excludes': ?excludes, 'includes': ?includes};
  }

  factory PipelineTriggerGitConfigurationPushBranches.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineTriggerGitConfigurationPushBranches(
      excludes: (() {
        final guardedValue = map['excludes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includes: (() {
        final guardedValue = map['includes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

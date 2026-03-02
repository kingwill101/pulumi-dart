// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineTriggerGitConfigurationPushTags {
  /// A list of patterns of Git tags that, when pushed, are to be excluded from starting the pipeline.
  final pulumi.Input<List<String>>? excludes;
  /// A list of patterns of Git tags that, when pushed, are to be included as criteria that starts the pipeline.
  final pulumi.Input<List<String>>? includes;

  /// Creates a new [PipelineTriggerGitConfigurationPushTags].
  /// [excludes] A list of patterns of Git tags that, when pushed, are to be excluded from starting the pipeline.
  /// [includes] A list of patterns of Git tags that, when pushed, are to be included as criteria that starts the pipeline.
  PipelineTriggerGitConfigurationPushTags({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'includes': ?includes,
    };
  }

  factory PipelineTriggerGitConfigurationPushTags.fromMap(Map<String, dynamic> map) {
    return PipelineTriggerGitConfigurationPushTags(
      excludes: map['excludes'] == null ? null : (((map['excludes'] as List).cast<String>()).input()).input(),
      includes: map['includes'] == null ? null : (((map['includes'] as List).cast<String>()).input()).input(),
    );
  }
}


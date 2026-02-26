// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rollout_sequence_stage/rollout_sequence_stage.dart';

/// The set of arguments for RolloutSequence.
class RolloutSequenceArgs {
  /// Human readable display name of the Rollout Sequence.
  final Input<String>? displayName;

  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The user-provided identifier of the RolloutSequence.
  final Input<String> rolloutSequenceId;

  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  final Input<List<RolloutSequenceStage>> stages;

  RolloutSequenceArgs({
    this.displayName,
    this.labels,
    this.project,
    required this.rolloutSequenceId,
    required this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rolloutSequenceId'] = rolloutSequenceId;
    map['stages'] = Input.mapInputValue<List<RolloutSequenceStage>,
            List<Map<String, dynamic>>>(
        stages,
        (value) => Input.encodeList<RolloutSequenceStage, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    return map;
  }

  factory RolloutSequenceArgs.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      rolloutSequenceId: Input.asInput<String>(map['rolloutSequenceId']),
      stages: Input.asInput<List<RolloutSequenceStage>>(map['stages']),
    );
  }
}

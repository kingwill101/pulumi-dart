// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_trial_args_doc}
/// Arguments for getTrial.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_trial_args_doc}
class GetTrialArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;
  final pulumi.Input<String> trialId;

  /// Creates a new [GetTrialArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  /// [trialId] Required.
  GetTrialArgs({
    required String location,
    String? project,
    required String studyId,
    required String trialId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        studyId = pulumi.Input.asInput<String>(studyId),
        trialId = pulumi.Input.asInput<String>(trialId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studyId'] = studyId;
    map['trialId'] = trialId;
    return map;
  }

  factory GetTrialArgs.fromMap(Map<String, dynamic> map) {
    return GetTrialArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studyId: map['studyId'] as String,
      trialId: map['trialId'] as String,
    );
  }
}

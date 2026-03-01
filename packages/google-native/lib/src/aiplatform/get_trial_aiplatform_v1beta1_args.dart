// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_trial_aiplatform_v1beta1_args_doc}
/// Arguments for getTrial.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_trial_aiplatform_v1beta1_args_doc}
class GetTrialAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;
  final pulumi.Input<String> trialId;

  /// Creates a new [GetTrialAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  /// [trialId] Required.
  GetTrialAiplatformV1beta1Args({
    required String location,
    String? project,
    required String studyId,
    required String trialId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       studyId = pulumi.Input.asInput<String>(studyId),
       trialId = pulumi.Input.asInput<String>(trialId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'studyId': studyId,
      'trialId': trialId,
    };
  }

  factory GetTrialAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTrialAiplatformV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studyId: map['studyId'] as String,
      trialId: map['trialId'] as String,
    );
  }
}

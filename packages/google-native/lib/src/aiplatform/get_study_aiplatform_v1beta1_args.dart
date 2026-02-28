// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
/// Arguments for getStudy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_study_aiplatform_v1beta1_args_doc}
class GetStudyAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  /// Creates a new [GetStudyAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  GetStudyAiplatformV1beta1Args({
    required String location,
    String? project,
    required String studyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      studyId = pulumi.Input.asInput<String>(studyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'studyId': studyId,
    };
  }

  factory GetStudyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetStudyAiplatformV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studyId: map['studyId'] as String,
    );
  }
}


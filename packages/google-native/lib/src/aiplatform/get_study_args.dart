// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_study_args_doc}
/// Arguments for getStudy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_study_args_doc}
class GetStudyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> studyId;

  /// Creates a new [GetStudyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [studyId] Required.
  GetStudyArgs({
    required String location,
    String? project,
    required String studyId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       studyId = pulumi.Input.asInput<String>(studyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'studyId': studyId,
    };
  }

  factory GetStudyArgs.fromMap(Map<String, dynamic> map) {
    return GetStudyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studyId: map['studyId'] as String,
    );
  }
}

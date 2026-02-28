// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config.dart';

/// {@template pulumi_ml_v1_study_args_doc}
/// The set of arguments for Study.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_study_args_doc}
class StudyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Configuration of the study.
  final pulumi.Input<GoogleCloudMlV1StudyConfig> studyConfig;
  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  final pulumi.Input<String> studyId;

  /// Creates a new [StudyArgs].
  /// [location] Optional.
  /// [project] Optional.
  /// [studyConfig] Configuration of the study.
  /// [studyId] Required. The ID to use for the study, which will become the final component of the study's resource name.
  StudyArgs({
    String? location,
    String? project,
    required GoogleCloudMlV1StudyConfig studyConfig,
    required String studyId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      studyConfig = pulumi.Input.asInput<GoogleCloudMlV1StudyConfig>(studyConfig),
      studyId = pulumi.Input.asInput<String>(studyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'studyConfig': pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfig, Map<String, dynamic>>(studyConfig, (value) => value.toMap()),
      'studyId': studyId,
    };
  }

  factory StudyArgs.fromMap(Map<String, dynamic> map) {
    return StudyArgs(
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studyConfig: GoogleCloudMlV1StudyConfig.fromMap((map['studyConfig'] as Map).cast<String, dynamic>()),
      studyId: map['studyId'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_study_config.dart';

/// The set of arguments for Study.
class StudyMlV1Args {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Configuration of the study.
  final pulumi.Input<GoogleCloudMlV1StudyConfig> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  final pulumi.Input<String> studyId;

  StudyMlV1Args({
    this.location,
    this.project,
    required this.studyConfig,
    required this.studyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studyConfig'] = pulumi.Input.mapInputValue<GoogleCloudMlV1StudyConfig,
        Map<String, dynamic>>(studyConfig, (value) => value.toMap());
    map['studyId'] = studyId;
    return map;
  }

  factory StudyMlV1Args.fromMap(Map<String, dynamic> map) {
    return StudyMlV1Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      studyConfig:
          pulumi.Input.asInput<GoogleCloudMlV1StudyConfig>(map['studyConfig']),
      studyId: pulumi.Input.asInput<String>(map['studyId']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_ml_v1_study_config.dart';

/// The set of arguments for Study.
class StudyArgs3 {
  final Input<String>? location;
  final Input<String>? project;

  /// Configuration of the study.
  final Input<GoogleCloudMlV1StudyConfig> studyConfig;

  /// Required. The ID to use for the study, which will become the final component of the study's resource name.
  final Input<String> studyId;

  StudyArgs3({
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
    map['studyConfig'] =
        Input.mapInputValue<GoogleCloudMlV1StudyConfig, Map<String, dynamic>>(
            studyConfig, (value) => value.toMap());
    map['studyId'] = studyId;
    return map;
  }

  factory StudyArgs3.fromMap(Map<String, dynamic> map) {
    return StudyArgs3(
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studyConfig:
          Input.asInput<GoogleCloudMlV1StudyConfig>(map['studyConfig']),
      studyId: Input.asInput<String>(map['studyId']),
    );
  }
}

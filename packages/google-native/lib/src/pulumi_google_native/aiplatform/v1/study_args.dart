// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_study_spec.dart';

/// The set of arguments for Study.
class StudyArgs {
  /// Describes the Study, default value is empty string.
  final Input<String> displayName;
  final Input<String>? location;
  final Input<String>? project;

  /// Configuration of the Study.
  final Input<GoogleCloudAiplatformV1StudySpec> studySpec;

  StudyArgs({
    required this.displayName,
    this.location,
    this.project,
    required this.studySpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['studySpec'] = Input.mapInputValue<GoogleCloudAiplatformV1StudySpec,
        Map<String, dynamic>>(studySpec, (value) => value.toMap());
    return map;
  }

  factory StudyArgs.fromMap(Map<String, dynamic> map) {
    return StudyArgs(
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studySpec:
          Input.asInput<GoogleCloudAiplatformV1StudySpec>(map['studySpec']),
    );
  }
}

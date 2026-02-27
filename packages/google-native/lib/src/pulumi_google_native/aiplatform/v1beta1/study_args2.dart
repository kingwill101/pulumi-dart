// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_study_spec.dart';

/// The set of arguments for Study.
class StudyArgs2 {
  /// Describes the Study, default value is empty string.
  final Input<String> displayName;
  final Input<String>? location;
  final Input<String>? project;

  /// Configuration of the Study.
  final Input<GoogleCloudAiplatformV1beta1StudySpec> studySpec;

  StudyArgs2({
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
    map['studySpec'] = Input.mapInputValue<
        GoogleCloudAiplatformV1beta1StudySpec,
        Map<String, dynamic>>(studySpec, (value) => value.toMap());
    return map;
  }

  factory StudyArgs2.fromMap(Map<String, dynamic> map) {
    return StudyArgs2(
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      studySpec: Input.asInput<GoogleCloudAiplatformV1beta1StudySpec>(
          map['studySpec']),
    );
  }
}

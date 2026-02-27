// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec.dart';

/// The set of arguments for Study.
class StudyArgs {
  /// Describes the Study, default value is empty string.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Configuration of the Study.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpec> studySpec;

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
    map['studySpec'] = pulumi.Input.mapInputValue<
        GoogleCloudAiplatformV1StudySpec,
        Map<String, dynamic>>(studySpec, (value) => value.toMap());
    return map;
  }

  factory StudyArgs.fromMap(Map<String, dynamic> map) {
    return StudyArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      studySpec: pulumi.Input.asInput<GoogleCloudAiplatformV1StudySpec>(
          map['studySpec']),
    );
  }
}

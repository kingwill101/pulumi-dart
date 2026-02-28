// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec.dart';

/// {@template pulumi_aiplatform_v1beta1_study_aiplatform_v1beta1_args_doc}
/// The set of arguments for Study.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_study_aiplatform_v1beta1_args_doc}
class StudyAiplatformV1beta1Args {
  /// Describes the Study, default value is empty string.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Configuration of the Study.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpec> studySpec;

  /// Creates a new [StudyAiplatformV1beta1Args].
  /// [displayName] Describes the Study, default value is empty string.
  /// [location] Optional.
  /// [project] Optional.
  /// [studySpec] Configuration of the Study.
  StudyAiplatformV1beta1Args({
    required String displayName,
    String? location,
    String? project,
    required GoogleCloudAiplatformV1beta1StudySpec studySpec,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        studySpec = pulumi.Input.asInput<GoogleCloudAiplatformV1beta1StudySpec>(
            studySpec);

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
        GoogleCloudAiplatformV1beta1StudySpec,
        Map<String, dynamic>>(studySpec, (value) => value.toMap());
    return map;
  }

  factory StudyAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return StudyAiplatformV1beta1Args(
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      studySpec: GoogleCloudAiplatformV1beta1StudySpec.fromMap(
          (map['studySpec'] as Map).cast<String, dynamic>()),
    );
  }
}

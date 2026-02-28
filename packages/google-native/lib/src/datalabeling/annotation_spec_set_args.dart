// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_annotation_spec.dart';

/// {@template pulumi_datalabeling_v1beta1_annotation_spec_set_args_doc}
/// The set of arguments for AnnotationSpecSet.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_annotation_spec_set_args_doc}
class AnnotationSpecSetArgs {
  /// The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  final pulumi.Input<List<GoogleCloudDatalabelingV1beta1AnnotationSpec>>
      annotationSpecs;

  /// Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  final pulumi.Input<String>? description;

  /// The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? project;

  /// Creates a new [AnnotationSpecSetArgs].
  /// [annotationSpecs] The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  /// [description] Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  /// [displayName] The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  /// [project] Optional.
  AnnotationSpecSetArgs({
    required List<GoogleCloudDatalabelingV1beta1AnnotationSpec> annotationSpecs,
    String? description,
    required String displayName,
    String? project,
  })  : annotationSpecs = pulumi.Input.asInput<
                List<GoogleCloudDatalabelingV1beta1AnnotationSpec>>(
            annotationSpecs),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSpecs'] = pulumi.Input.mapInputValue<
            List<GoogleCloudDatalabelingV1beta1AnnotationSpec>,
            List<Map<String, dynamic>>>(
        annotationSpecs,
        (value) => pulumi.Input.encodeList<
            GoogleCloudDatalabelingV1beta1AnnotationSpec,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AnnotationSpecSetArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationSpecSetArgs(
      annotationSpecs:
          pulumi.Input.decodeList<GoogleCloudDatalabelingV1beta1AnnotationSpec>(
              map['annotationSpecs'],
              (value) => GoogleCloudDatalabelingV1beta1AnnotationSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

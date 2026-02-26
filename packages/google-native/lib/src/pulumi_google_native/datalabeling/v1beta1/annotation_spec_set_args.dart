// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_datalabeling_v1beta1_annotation_spec.dart';

/// The set of arguments for AnnotationSpecSet.
class AnnotationSpecSetArgs {
  /// The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  final Input<List<GoogleCloudDatalabelingV1beta1AnnotationSpec>>
      annotationSpecs;

  /// Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  final Input<String>? description;

  /// The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  final Input<String> displayName;
  final Input<String>? project;

  AnnotationSpecSetArgs({
    required this.annotationSpecs,
    this.description,
    required this.displayName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSpecs'] = Input.mapInputValue<
            List<GoogleCloudDatalabelingV1beta1AnnotationSpec>,
            List<Map<String, dynamic>>>(
        annotationSpecs,
        (value) => Input.encodeList<
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
          Input.asInput<List<GoogleCloudDatalabelingV1beta1AnnotationSpec>>(
              map['annotationSpecs']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

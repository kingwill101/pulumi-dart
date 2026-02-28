// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_annotation_spec_set_args_doc}
/// Arguments for getAnnotationSpecSet.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_annotation_spec_set_args_doc}
class GetAnnotationSpecSetArgs {
  final pulumi.Input<String> annotationSpecSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationSpecSetArgs].
  /// [annotationSpecSetId] Required.
  /// [project] Optional.
  GetAnnotationSpecSetArgs({
    required String annotationSpecSetId,
    String? project,
  })  : annotationSpecSetId = pulumi.Input.asInput<String>(annotationSpecSetId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSpecSetId'] = annotationSpecSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAnnotationSpecSetArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationSpecSetArgs(
      annotationSpecSetId: map['annotationSpecSetId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

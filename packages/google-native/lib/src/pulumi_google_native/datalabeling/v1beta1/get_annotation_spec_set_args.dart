// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAnnotationSpecSet.
class GetAnnotationSpecSetArgs {
  final Input<String> annotationSpecSetId;
  final Input<String>? project;

  GetAnnotationSpecSetArgs({
    required this.annotationSpecSetId,
    this.project,
  });

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
      annotationSpecSetId: Input.asInput<String>(map['annotationSpecSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

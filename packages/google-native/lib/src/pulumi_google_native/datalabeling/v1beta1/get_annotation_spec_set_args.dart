// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAnnotationSpecSet.
class GetAnnotationSpecSetArgs {
  final pulumi.Input<String> annotationSpecSetId;
  final pulumi.Input<String>? project;

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
      annotationSpecSetId:
          pulumi.Input.asInput<String>(map['annotationSpecSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

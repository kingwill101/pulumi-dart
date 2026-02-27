// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAnnotation.
class GetAnnotationRapidmigrationassessmentV1Args {
  final pulumi.Input<String> annotationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAnnotationRapidmigrationassessmentV1Args({
    required this.annotationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationId'] = annotationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAnnotationRapidmigrationassessmentV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetAnnotationRapidmigrationassessmentV1Args(
      annotationId: pulumi.Input.asInput<String>(map['annotationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

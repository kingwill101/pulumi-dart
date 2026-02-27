// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAnnotation.
class GetAnnotationArgs2 {
  final Input<String> annotationId;
  final Input<String> location;
  final Input<String>? project;

  GetAnnotationArgs2({
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

  factory GetAnnotationArgs2.fromMap(Map<String, dynamic> map) {
    return GetAnnotationArgs2(
      annotationId: Input.asInput<String>(map['annotationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
